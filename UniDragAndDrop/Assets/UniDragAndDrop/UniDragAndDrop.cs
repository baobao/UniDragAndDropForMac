using System;
using System.Runtime.InteropServices;
#if UNITY_STANDALONE_OSX
using AOT;
#endif

namespace Shibuya24.Utility
{
    public static class UniDragAndDrop
    {
        /// <summary>
        /// Callback to return the local path of a drag-and-drop file
        /// </summary>
        public static Action<string> onDragAndDropFilePath;

        /// <summary>
        /// Initialization functions that must be called
        /// </summary>
        public static void Initialize()
        {
#if UNITY_STANDALONE_OSX
            Initialize(cs_callback);
#endif
        }

        delegate void callback_delegate(string val);

#if UNITY_STANDALONE_OSX
        [DllImport("UniDragAndDrop")]
        private static extern void Initialize(callback_delegate callback);

        // call from Objective-C
        [MonoPInvokeCallback(typeof(callback_delegate))]
        private static void cs_callback(string val)
        {
            onDragAndDropFilePath?.Invoke(val);
        }
#endif
    }
}
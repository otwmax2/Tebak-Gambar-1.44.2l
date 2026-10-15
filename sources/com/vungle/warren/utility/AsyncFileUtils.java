package com.vungle.warren.utility;

import android.os.AsyncTask;
import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class AsyncFileUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile Executor f28552a = new SDKExecutors().getTaskExecutor();

    public static class ExistenceOperation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final FileExistenceTask f28553a;

        ExistenceOperation(FileExistenceTask fileExistenceTask) {
            this.f28553a = fileExistenceTask;
        }

        public void cancel() {
            this.f28553a.b();
            this.f28553a.cancel(true);
        }
    }

    public interface FileExistCallback {
        void status(boolean z10);
    }

    private static class FileExistenceTask extends AsyncTask<Void, Void, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final File f28554a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private FileExistCallback f28555b;

        public FileExistenceTask(File file, FileExistCallback fileExistCallback) {
            this.f28554a = file;
            this.f28555b = fileExistCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void b() {
            this.f28555b = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(Void... voidArr) {
            File file = this.f28554a;
            return Boolean.valueOf(file != null && file.exists());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            synchronized (this) {
                FileExistCallback fileExistCallback = this.f28555b;
                if (fileExistCallback != null) {
                    fileExistCallback.status(bool.booleanValue());
                }
            }
        }
    }

    public static ExistenceOperation isFileExistAsync(File file, FileExistCallback fileExistCallback) {
        FileExistenceTask fileExistenceTask = new FileExistenceTask(file, fileExistCallback);
        ExistenceOperation existenceOperation = new ExistenceOperation(fileExistenceTask);
        fileExistenceTask.executeOnExecutor(f28552a, new Void[0]);
        return existenceOperation;
    }

    public static void setTaskExecutor(Executor executor) {
        f28552a = executor;
    }
}

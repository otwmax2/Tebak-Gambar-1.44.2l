package com.facebook.internal;

import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: compiled from: FileLruCache.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FileLruCache {
    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    private final Condition condition;
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    private final AtomicLong lastClearCacheTime;
    private final Limits limits;
    private final ReentrantLock lock;
    private final String tag;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = FileLruCache.class.getSimpleName();
    private static final AtomicLong bufferIndex = new AtomicLong();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: FileLruCache.kt */
    static final class BufferFile {
        private static final String FILE_NAME_PREFIX = "buffer";
        public static final BufferFile INSTANCE = new BufferFile();
        private static final FilenameFilter filterExcludeBufferFiles = new FilenameFilter() { // from class: com.facebook.internal.m
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return FileLruCache.BufferFile.m110filterExcludeBufferFiles$lambda0(file, str);
            }
        };
        private static final FilenameFilter filterExcludeNonBufferFiles = new FilenameFilter() { // from class: com.facebook.internal.l
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return FileLruCache.BufferFile.m111filterExcludeNonBufferFiles$lambda1(file, str);
            }
        };

        private BufferFile() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: filterExcludeBufferFiles$lambda-0, reason: not valid java name */
        public static final boolean m110filterExcludeBufferFiles$lambda0(File file, String str) {
            t9.m.d(str, "filename");
            return !ba.p.u(str, FILE_NAME_PREFIX, false, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: filterExcludeNonBufferFiles$lambda-1, reason: not valid java name */
        public static final boolean m111filterExcludeNonBufferFiles$lambda1(File file, String str) {
            t9.m.d(str, "filename");
            return ba.p.u(str, FILE_NAME_PREFIX, false, 2, null);
        }

        public final void deleteAll(File file) {
            t9.m.e(file, "root");
            File[] fileArrListFiles = file.listFiles(excludeNonBufferFiles());
            if (fileArrListFiles != null) {
                int i10 = 0;
                int length = fileArrListFiles.length;
                while (i10 < length) {
                    File file2 = fileArrListFiles[i10];
                    i10++;
                    file2.delete();
                }
            }
        }

        public final FilenameFilter excludeBufferFiles() {
            return filterExcludeBufferFiles;
        }

        public final FilenameFilter excludeNonBufferFiles() {
            return filterExcludeNonBufferFiles;
        }

        public final File newFile(File file) {
            return new File(file, t9.m.k(FILE_NAME_PREFIX, Long.valueOf(FileLruCache.bufferIndex.incrementAndGet())));
        }
    }

    /* JADX INFO: compiled from: FileLruCache.kt */
    private static final class CloseCallbackOutputStream extends OutputStream {
        private final StreamCloseCallback callback;
        private final OutputStream innerStream;

        public CloseCallbackOutputStream(OutputStream outputStream, StreamCloseCallback streamCloseCallback) {
            t9.m.e(outputStream, "innerStream");
            t9.m.e(streamCloseCallback, "callback");
            this.innerStream = outputStream;
            this.callback = streamCloseCallback;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.innerStream.close();
            } finally {
                this.callback.onClose();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.innerStream.flush();
        }

        public final StreamCloseCallback getCallback() {
            return this.callback;
        }

        public final OutputStream getInnerStream() {
            return this.innerStream;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            t9.m.e(bArr, "buffer");
            this.innerStream.write(bArr, i10, i11);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            t9.m.e(bArr, "buffer");
            this.innerStream.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            this.innerStream.write(i10);
        }
    }

    /* JADX INFO: compiled from: FileLruCache.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final String getTAG() {
            return FileLruCache.TAG;
        }
    }

    /* JADX INFO: compiled from: FileLruCache.kt */
    public static final class Limits {
        private int byteCount = 1048576;
        private int fileCount = 1024;

        public final int getByteCount() {
            return this.byteCount;
        }

        public final int getFileCount() {
            return this.fileCount;
        }

        public final void setByteCount(int i10) {
            if (i10 < 0) {
                throw new InvalidParameterException("Cache byte-count limit must be >= 0");
            }
            this.byteCount = i10;
        }

        public final void setFileCount(int i10) {
            if (i10 < 0) {
                throw new InvalidParameterException("Cache file count limit must be >= 0");
            }
            this.fileCount = i10;
        }
    }

    /* JADX INFO: compiled from: FileLruCache.kt */
    private static final class ModifiedFile implements Comparable<ModifiedFile> {
        public static final Companion Companion = new Companion(null);
        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        private final File file;
        private final long modified;

        /* JADX INFO: compiled from: FileLruCache.kt */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(t9.g gVar) {
                this();
            }
        }

        public ModifiedFile(File file) {
            t9.m.e(file, ShareInternalUtility.STAGING_PARAM);
            this.file = file;
            this.modified = file.lastModified();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ModifiedFile) && compareTo((ModifiedFile) obj) == 0;
        }

        public final File getFile() {
            return this.file;
        }

        public final long getModified() {
            return this.modified;
        }

        public int hashCode() {
            return ((1073 + this.file.hashCode()) * 37) + ((int) (this.modified % ((long) Integer.MAX_VALUE)));
        }

        @Override // java.lang.Comparable
        public int compareTo(ModifiedFile modifiedFile) {
            t9.m.e(modifiedFile, "another");
            long j10 = this.modified;
            long j11 = modifiedFile.modified;
            if (j10 < j11) {
                return -1;
            }
            if (j10 > j11) {
                return 1;
            }
            return this.file.compareTo(modifiedFile.file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: FileLruCache.kt */
    interface StreamCloseCallback {
        void onClose();
    }

    /* JADX INFO: compiled from: FileLruCache.kt */
    private static final class StreamHeader {
        private static final int HEADER_VERSION = 0;
        public static final StreamHeader INSTANCE = new StreamHeader();

        private StreamHeader() {
        }

        public final JSONObject readHeader(InputStream inputStream) throws IOException {
            t9.m.e(inputStream, "stream");
            if (inputStream.read() != 0) {
                return null;
            }
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = inputStream.read();
                if (i13 == -1) {
                    Logger.Companion companion = Logger.Companion;
                    LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                    String tag = FileLruCache.Companion.getTAG();
                    t9.m.d(tag, "TAG");
                    companion.log(loggingBehavior, tag, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i11 = (i11 << 8) + (i13 & 255);
            }
            byte[] bArr = new byte[i11];
            while (i10 < i11) {
                int i14 = inputStream.read(bArr, i10, i11 - i10);
                if (i14 < 1) {
                    Logger.Companion companion2 = Logger.Companion;
                    LoggingBehavior loggingBehavior2 = LoggingBehavior.CACHE;
                    String tag2 = FileLruCache.Companion.getTAG();
                    t9.m.d(tag2, "TAG");
                    companion2.log(loggingBehavior2, tag2, "readHeader: stream.read stopped at " + Integer.valueOf(i10) + " when expected " + i11);
                    return null;
                }
                i10 += i14;
            }
            try {
                Object objNextValue = new JSONTokener(new String(bArr, ba.d.f4713b)).nextValue();
                if (objNextValue instanceof JSONObject) {
                    return (JSONObject) objNextValue;
                }
                Logger.Companion companion3 = Logger.Companion;
                LoggingBehavior loggingBehavior3 = LoggingBehavior.CACHE;
                String tag3 = FileLruCache.Companion.getTAG();
                t9.m.d(tag3, "TAG");
                companion3.log(loggingBehavior3, tag3, t9.m.k("readHeader: expected JSONObject, got ", objNextValue.getClass().getCanonicalName()));
                return null;
            } catch (JSONException e10) {
                throw new IOException(e10.getMessage());
            }
        }

        public final void writeHeader(OutputStream outputStream, JSONObject jSONObject) throws IOException {
            t9.m.e(outputStream, "stream");
            t9.m.e(jSONObject, "header");
            String string = jSONObject.toString();
            t9.m.d(string, "header.toString()");
            byte[] bytes = string.getBytes(ba.d.f4713b);
            t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
            outputStream.write(0);
            outputStream.write((bytes.length >> 16) & 255);
            outputStream.write((bytes.length >> 8) & 255);
            outputStream.write((bytes.length >> 0) & 255);
            outputStream.write(bytes);
        }
    }

    public FileLruCache(String str, Limits limits) {
        t9.m.e(str, "tag");
        t9.m.e(limits, "limits");
        this.tag = str;
        this.limits = limits;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        File file = new File(FacebookSdk.getCacheDir(), str);
        this.directory = file;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
        this.lastClearCacheTime = new AtomicLong(0L);
        if (file.mkdirs() || file.isDirectory()) {
            BufferFile.INSTANCE.deleteAll(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: clearCache$lambda-1, reason: not valid java name */
    public static final void m108clearCache$lambda1(File[] fileArr) {
        t9.m.d(fileArr, "filesToDelete");
        int length = fileArr.length;
        int i10 = 0;
        while (i10 < length) {
            File file = fileArr[i10];
            i10++;
            file.delete();
        }
    }

    public static /* synthetic */ InputStream get$default(FileLruCache fileLruCache, String str, String str2, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return fileLruCache.get(str, str2);
    }

    public static /* synthetic */ OutputStream openPutStream$default(FileLruCache fileLruCache, String str, String str2, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return fileLruCache.openPutStream(str, str2);
    }

    private final void postTrim() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.isTrimPending) {
                this.isTrimPending = true;
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLruCache.m109postTrim$lambda3$lambda2(this.f5396o);
                    }
                });
            }
            h9.t tVar = h9.t.f30301a;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: postTrim$lambda-3$lambda-2, reason: not valid java name */
    public static final void m109postTrim$lambda3$lambda2(FileLruCache fileLruCache) {
        t9.m.e(fileLruCache, "this$0");
        fileLruCache.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renameToTargetAndTrim(String str, File file) {
        File file2 = this.directory;
        Utility utility = Utility.INSTANCE;
        if (!file.renameTo(new File(file2, Utility.md5hash(str)))) {
            file.delete();
        }
        postTrim();
    }

    private final void trim() {
        long j10;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.isTrimPending = false;
            this.isTrimInProgress = true;
            h9.t tVar = h9.t.f30301a;
            reentrantLock.unlock();
            try {
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String str = TAG;
                t9.m.d(str, "TAG");
                companion.log(loggingBehavior, str, "trim started");
                PriorityQueue priorityQueue = new PriorityQueue();
                File[] fileArrListFiles = this.directory.listFiles(BufferFile.INSTANCE.excludeBufferFiles());
                long length = 0;
                if (fileArrListFiles != null) {
                    int length2 = fileArrListFiles.length;
                    j10 = 0;
                    int i10 = 0;
                    while (i10 < length2) {
                        File file = fileArrListFiles[i10];
                        i10++;
                        t9.m.d(file, ShareInternalUtility.STAGING_PARAM);
                        ModifiedFile modifiedFile = new ModifiedFile(file);
                        priorityQueue.add(modifiedFile);
                        Logger.Companion companion2 = Logger.Companion;
                        LoggingBehavior loggingBehavior2 = LoggingBehavior.CACHE;
                        String str2 = TAG;
                        t9.m.d(str2, "TAG");
                        companion2.log(loggingBehavior2, str2, "  trim considering time=" + Long.valueOf(modifiedFile.getModified()) + " name=" + ((Object) modifiedFile.getFile().getName()));
                        length += file.length();
                        j10++;
                        fileArrListFiles = fileArrListFiles;
                    }
                } else {
                    j10 = 0;
                }
                while (true) {
                    if (length <= this.limits.getByteCount() && j10 <= this.limits.getFileCount()) {
                        this.lock.lock();
                        try {
                            this.isTrimInProgress = false;
                            this.condition.signalAll();
                            h9.t tVar2 = h9.t.f30301a;
                            return;
                        } finally {
                        }
                    }
                    File file2 = ((ModifiedFile) priorityQueue.remove()).getFile();
                    Logger.Companion companion3 = Logger.Companion;
                    LoggingBehavior loggingBehavior3 = LoggingBehavior.CACHE;
                    String str3 = TAG;
                    t9.m.d(str3, "TAG");
                    companion3.log(loggingBehavior3, str3, t9.m.k("  trim removing ", file2.getName()));
                    length -= file2.length();
                    j10--;
                    file2.delete();
                }
            } catch (Throwable th) {
                this.lock.lock();
                try {
                    this.isTrimInProgress = false;
                    this.condition.signalAll();
                    h9.t tVar3 = h9.t.f30301a;
                    throw th;
                } finally {
                }
            }
        } finally {
        }
    }

    public final void clearCache() {
        final File[] fileArrListFiles = this.directory.listFiles(BufferFile.INSTANCE.excludeBufferFiles());
        this.lastClearCacheTime.set(System.currentTimeMillis());
        if (fileArrListFiles != null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.k
                @Override // java.lang.Runnable
                public final void run() {
                    FileLruCache.m108clearCache$lambda1(fileArrListFiles);
                }
            });
        }
    }

    public final InputStream get(String str) throws IOException {
        t9.m.e(str, "key");
        return get$default(this, str, null, 2, null);
    }

    public final InputStream get(String str, String str2) throws IOException {
        t9.m.e(str, "key");
        File file = this.directory;
        Utility utility = Utility.INSTANCE;
        File file2 = new File(file, Utility.md5hash(str));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2), Utility.DEFAULT_STREAM_BUFFER_SIZE);
            try {
                JSONObject header = StreamHeader.INSTANCE.readHeader(bufferedInputStream);
                if (header == null) {
                    return null;
                }
                if (!t9.m.a(header.optString("key"), str)) {
                    return null;
                }
                String strOptString = header.optString("tag", null);
                if (str2 == null && !t9.m.a(str2, strOptString)) {
                    return null;
                }
                long time = new Date().getTime();
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String str3 = TAG;
                t9.m.d(str3, "TAG");
                companion.log(loggingBehavior, str3, "Setting lastModified to " + Long.valueOf(time) + " for " + ((Object) file2.getName()));
                file2.setLastModified(time);
                return bufferedInputStream;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public final String getLocation() {
        String path = this.directory.getPath();
        t9.m.d(path, "directory.path");
        return path;
    }

    public final InputStream interceptAndPut(String str, InputStream inputStream) throws IOException {
        t9.m.e(str, "key");
        t9.m.e(inputStream, "input");
        return new CopyingInputStream(inputStream, openPutStream$default(this, str, null, 2, null));
    }

    public final OutputStream openPutStream(String str) throws IOException {
        t9.m.e(str, "key");
        return openPutStream$default(this, str, null, 2, null);
    }

    public final OutputStream openPutStream(final String str, String str2) throws IOException {
        t9.m.e(str, "key");
        final File fileNewFile = BufferFile.INSTANCE.newFile(this.directory);
        fileNewFile.delete();
        if (!fileNewFile.createNewFile()) {
            throw new IOException(t9.m.k("Could not create file at ", fileNewFile.getAbsolutePath()));
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileNewFile);
            final long jCurrentTimeMillis = System.currentTimeMillis();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new CloseCallbackOutputStream(fileOutputStream, new StreamCloseCallback() { // from class: com.facebook.internal.FileLruCache$openPutStream$renameToTargetCallback$1
                @Override // com.facebook.internal.FileLruCache.StreamCloseCallback
                public void onClose() {
                    if (jCurrentTimeMillis < this.lastClearCacheTime.get()) {
                        fileNewFile.delete();
                    } else {
                        this.renameToTargetAndTrim(str, fileNewFile);
                    }
                }
            }), Utility.DEFAULT_STREAM_BUFFER_SIZE);
            try {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", str);
                    Utility utility = Utility.INSTANCE;
                    if (!Utility.isNullOrEmpty(str2)) {
                        jSONObject.put("tag", str2);
                    }
                    StreamHeader.INSTANCE.writeHeader(bufferedOutputStream, jSONObject);
                    return bufferedOutputStream;
                } catch (JSONException e10) {
                    Logger.Companion companion = Logger.Companion;
                    LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                    String str3 = TAG;
                    t9.m.d(str3, "TAG");
                    companion.log(loggingBehavior, 5, str3, t9.m.k("Error creating JSON header for cache file: ", e10));
                    throw new IOException(e10.getMessage());
                }
            } catch (Throwable th) {
                bufferedOutputStream.close();
                throw th;
            }
        } catch (FileNotFoundException e11) {
            Logger.Companion companion2 = Logger.Companion;
            LoggingBehavior loggingBehavior2 = LoggingBehavior.CACHE;
            String str4 = TAG;
            t9.m.d(str4, "TAG");
            companion2.log(loggingBehavior2, 5, str4, t9.m.k("Error creating buffer output stream: ", e11));
            throw new IOException(e11.getMessage());
        }
    }

    public final long sizeInBytesForTest() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        while (true) {
            try {
                if (!this.isTrimPending && !this.isTrimInProgress) {
                    break;
                }
                try {
                    this.condition.await();
                } catch (InterruptedException unused) {
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        h9.t tVar = h9.t.f30301a;
        reentrantLock.unlock();
        File[] fileArrListFiles = this.directory.listFiles();
        long length = 0;
        if (fileArrListFiles != null) {
            int i10 = 0;
            int length2 = fileArrListFiles.length;
            while (i10 < length2) {
                File file = fileArrListFiles[i10];
                i10++;
                length += file.length();
            }
        }
        return length;
    }

    public String toString() {
        return "{FileLruCache: tag:" + this.tag + " file:" + ((Object) this.directory.getName()) + '}';
    }

    /* JADX INFO: compiled from: FileLruCache.kt */
    private static final class CopyingInputStream extends InputStream {
        private final InputStream input;
        private final OutputStream output;

        public CopyingInputStream(InputStream inputStream, OutputStream outputStream) {
            t9.m.e(inputStream, "input");
            t9.m.e(outputStream, "output");
            this.input = inputStream;
            this.output = outputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.input.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.input.close();
            } finally {
                this.output.close();
            }
        }

        public final InputStream getInput() {
            return this.input;
        }

        public final OutputStream getOutput() {
            return this.output;
        }

        @Override // java.io.InputStream
        public void mark(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            t9.m.e(bArr, "buffer");
            int i10 = this.input.read(bArr);
            if (i10 > 0) {
                this.output.write(bArr, 0, i10);
            }
            return i10;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public long skip(long j10) throws IOException {
            int i10;
            byte[] bArr = new byte[1024];
            long j11 = 0;
            while (j11 < j10 && (i10 = read(bArr, 0, (int) Math.min(j10 - j11, 1024))) >= 0) {
                j11 += (long) i10;
            }
            return j11;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int i10 = this.input.read();
            if (i10 >= 0) {
                this.output.write(i10);
            }
            return i10;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            t9.m.e(bArr, "buffer");
            int i12 = this.input.read(bArr, i10, i11);
            if (i12 > 0) {
                this.output.write(bArr, i10, i12);
            }
            return i12;
        }
    }
}

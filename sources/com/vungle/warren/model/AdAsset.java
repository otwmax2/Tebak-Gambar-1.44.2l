package com.vungle.warren.model;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class AdAsset {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f28114a;
    public final String adIdentifier;
    public long fileSize;
    public int fileType;
    public final String identifier;
    public final String localPath;
    public String parentId;
    public int retryCount;
    public final String serverPath;
    public int status;

    /* JADX INFO: loaded from: classes.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorType {
        public static final int CANNOT_RETRY_ERROR = 2;
        public static final int CAN_RETRY_ERROR = 1;
        public static final int NO_ERROR = 0;
    }

    /* JADX INFO: loaded from: classes.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface FileType {
        public static final int ASSET = 2;
        public static final int ZIP = 0;
        public static final int ZIP_ASSET = 1;
    }

    /* JADX INFO: loaded from: classes.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface Status {
        public static final int DOWNLOAD_FAILED = 2;
        public static final int DOWNLOAD_RUNNING = 1;
        public static final int DOWNLOAD_SUCCESS = 3;
        public static final int NEW = 0;
        public static final int PROCESSED = 4;
    }

    public AdAsset(String str, String str2, String str3) {
        this(str, str2, str3, UUID.randomUUID().toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdAsset adAsset = (AdAsset) obj;
        if (this.status != adAsset.status || this.fileType != adAsset.fileType || this.fileSize != adAsset.fileSize || this.retryCount != adAsset.retryCount || this.f28114a != adAsset.f28114a) {
            return false;
        }
        String str = this.identifier;
        if (str == null ? adAsset.identifier != null : !str.equals(adAsset.identifier)) {
            return false;
        }
        String str2 = this.adIdentifier;
        if (str2 == null ? adAsset.adIdentifier != null : !str2.equals(adAsset.adIdentifier)) {
            return false;
        }
        String str3 = this.parentId;
        if (str3 == null ? adAsset.parentId != null : !str3.equals(adAsset.parentId)) {
            return false;
        }
        String str4 = this.serverPath;
        if (str4 == null ? adAsset.serverPath != null : !str4.equals(adAsset.serverPath)) {
            return false;
        }
        String str5 = this.localPath;
        String str6 = adAsset.localPath;
        return str5 != null ? str5.equals(str6) : str6 == null;
    }

    public int hashCode() {
        String str = this.identifier;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.adIdentifier;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.parentId;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.serverPath;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.localPath;
        int iHashCode5 = (((((iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.status) * 31) + this.fileType) * 31;
        long j10 = this.fileSize;
        return ((((iHashCode5 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.retryCount) * 31) + this.f28114a;
    }

    public String toString() {
        return "AdAsset{identifier='" + this.identifier + "', adIdentifier='" + this.adIdentifier + "', serverPath='" + this.serverPath + "', localPath='" + this.localPath + "', status=" + this.status + ", fileType=" + this.fileType + ", fileSize=" + this.fileSize + ", retryCount=" + this.retryCount + ", retryTypeError=" + this.f28114a + '}';
    }

    AdAsset(String str, String str2, String str3, String str4) {
        this.identifier = str4;
        this.adIdentifier = str;
        this.serverPath = str2;
        this.localPath = str3;
        this.fileSize = -1L;
        this.retryCount = 0;
        this.f28114a = 0;
    }
}

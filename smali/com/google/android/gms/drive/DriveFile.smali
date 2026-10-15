###### Class com.google.android.gms.drive.DriveFile (com.google.android.gms.drive.DriveFile)
.class public interface abstract Lcom/google/android/gms/drive/DriveFile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;,
        Lcom/google/android/gms/drive/DriveFile$OpenMode;
    }
.end annotation

###### Class com.google.android.gms.drive.DriveFile.DownloadProgressListener (com.google.android.gms.drive.DriveFile$DownloadProgressListener)
.class public interface abstract Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/DriveFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadProgressListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onProgress(JJ)V
.end method

###### Class com.google.android.gms.drive.DriveFile.OpenMode (com.google.android.gms.drive.DriveFile$OpenMode)
.class public interface abstract annotation Lcom/google/android/gms/drive/DriveFile$OpenMode;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/DriveFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "OpenMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

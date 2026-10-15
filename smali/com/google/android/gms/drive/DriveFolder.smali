###### Class com.google.android.gms.drive.DriveFolder (com.google.android.gms.drive.DriveFolder)
.class public interface abstract Lcom/google/android/gms/drive/DriveFolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;,
        Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
    }
.end annotation

###### Class com.google.android.gms.drive.DriveFolder.DriveFileResult (com.google.android.gms.drive.DriveFolder$DriveFileResult)
.class public interface abstract Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/DriveFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DriveFileResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.drive.DriveFolder.DriveFolderResult (com.google.android.gms.drive.DriveFolder$DriveFolderResult)
.class public interface abstract Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/DriveFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DriveFolderResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.drive.DriveApi (com.google.android.gms.drive.DriveApi)
.class public interface abstract Lcom/google/android/gms/drive/DriveApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/DriveApi$DriveIdResult;,
        Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;,
        Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.drive.DriveApi.DriveContentsResult (com.google.android.gms.drive.DriveApi$DriveContentsResult)
.class public interface abstract Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/DriveApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DriveContentsResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.drive.DriveApi.DriveIdResult (com.google.android.gms.drive.DriveApi$DriveIdResult)
.class public interface abstract Lcom/google/android/gms/drive/DriveApi$DriveIdResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/DriveApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DriveIdResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.drive.DriveApi.MetadataBufferResult (com.google.android.gms.drive.DriveApi$MetadataBufferResult)
.class public interface abstract Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/DriveApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetadataBufferResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.vungle.warren.downloader.AssetDownloadListener (com.vungle.warren.downloader.AssetDownloadListener)
.class public interface abstract Lcom/vungle/warren/downloader/AssetDownloadListener;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;,
        Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract onProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method

###### Class com.vungle.warren.downloader.AssetDownloadListener.DownloadError (com.vungle.warren.downloader.AssetDownloadListener$DownloadError)
.class public Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError$ErrorReason;
    }
.end annotation


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final reason:I
    .annotation build Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError$ErrorReason;
    .end annotation
.end field

.field public final serverCode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->serverCode:I

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    .line 4
    iput p3, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    return-void
.end method

###### Class com.vungle.warren.downloader.AssetDownloadListener.DownloadError.ErrorReason (com.vungle.warren.downloader.AssetDownloadListener$DownloadError$ErrorReason)
.class public interface abstract annotation Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError$ErrorReason;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ErrorReason"
.end annotation


# static fields
.field public static final CONNECTION_ERROR:I = 0x0

.field public static final DISK_ERROR:I = 0x2

.field public static final FILE_NOT_FOUND_ERROR:I = 0x3

.field public static final INTERNAL_ERROR:I = 0x4

.field public static final REQUEST_ERROR:I = 0x1

###### Class com.vungle.warren.downloader.AssetDownloadListener.Progress (com.vungle.warren.downloader.AssetDownloadListener$Progress)
.class public Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/AssetDownloadListener$Progress$ProgressStatus;
    }
.end annotation


# instance fields
.field public progressPercent:I

.field public sizeBytes:J

.field public startBytes:J

.field public status:I
    .annotation build Lcom/vungle/warren/downloader/AssetDownloadListener$Progress$ProgressStatus;
    .end annotation
.end field

.field public timestampDownloadStart:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v0}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 2
    iget v1, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    iput v1, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 3
    iget v1, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iput v1, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 4
    iget-wide v1, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    iput-wide v1, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    .line 5
    iget-wide v1, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    iput-wide v1, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 6
    iget-wide v1, p0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    iput-wide v1, v0, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    return-object v0
.end method

###### Class com.vungle.warren.downloader.AssetDownloadListener.Progress.ProgressStatus (com.vungle.warren.downloader.AssetDownloadListener$Progress$ProgressStatus)
.class public interface abstract annotation Lcom/vungle/warren/downloader/AssetDownloadListener$Progress$ProgressStatus;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ProgressStatus"
.end annotation


# static fields
.field public static final CANCELLED:I = 0x3

.field public static final DONE:I = 0x4

.field public static final IN_PROGRESS:I = 0x1

.field public static final LOST_CONNECTION:I = 0x5

.field public static final PAUSED:I = 0x2

.field public static final STARTED:I = 0x0

.field public static final STATE_CHANGED:I = 0x6

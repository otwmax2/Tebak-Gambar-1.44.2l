###### Class com.vungle.warren.downloader.Downloader (com.vungle.warren.downloader.Downloader)
.class public interface abstract Lcom/vungle/warren/downloader/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/Downloader$RequestException;,
        Lcom/vungle/warren/downloader/Downloader$NetworkType;
    }
.end annotation


# virtual methods
.method public abstract cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract cancelAndAwait(Lcom/vungle/warren/downloader/DownloadRequest;J)Z
.end method

.method public abstract clearCache()V
.end method

.method public abstract download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
.end method

.method public abstract dropCache(Ljava/lang/String;)Z
.end method

.method public abstract getAllRequests()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isCacheEnabled()Z
.end method

.method public abstract setCacheEnabled(Z)V
.end method

.method public abstract setProgressStep(I)V
.end method

.method public abstract updatePriority(Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method

###### Class com.vungle.warren.downloader.Downloader.NetworkType (com.vungle.warren.downloader.Downloader$NetworkType)
.class public interface abstract annotation Lcom/vungle/warren/downloader/Downloader$NetworkType;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NetworkType"
.end annotation


# static fields
.field public static final ANY:I = 0x3

.field public static final CELLULAR:I = 0x1

.field public static final WIFI:I = 0x2

###### Class com.vungle.warren.downloader.Downloader.RequestException (com.vungle.warren.downloader.Downloader$RequestException)
.class public Lcom/vungle/warren/downloader/Downloader$RequestException;
.super Ljava/lang/Exception;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

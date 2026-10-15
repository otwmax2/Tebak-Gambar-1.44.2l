###### Class com.vungle.warren.downloader.AssetPriority (com.vungle.warren.downloader.AssetPriority)
.class public Lcom/vungle/warren/downloader/AssetPriority;
.super Ljava/lang/Object;
.source "AssetPriority.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final o:Ljava/lang/Integer;

.field private final p:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p2    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Priority;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetPriority;->o:Ljava/lang/Integer;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetPriority;->p:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/vungle/warren/downloader/AssetPriority;

    if-eqz v0, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetPriority;->o:Ljava/lang/Integer;

    check-cast p1, Lcom/vungle/warren/downloader/AssetPriority;

    iget-object v1, p1, Lcom/vungle/warren/downloader/AssetPriority;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_19

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetPriority;->p:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/vungle/warren/downloader/AssetPriority;->p:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_19
    return v0

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssetPriority{firstPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetPriority;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetPriority;->p:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

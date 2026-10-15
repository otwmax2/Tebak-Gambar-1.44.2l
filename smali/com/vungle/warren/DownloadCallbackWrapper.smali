###### Class com.vungle.warren.DownloadCallbackWrapper (com.vungle.warren.DownloadCallbackWrapper)
.class Lcom/vungle/warren/DownloadCallbackWrapper;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/AdLoader$DownloadCallback;


# instance fields
.field private final a:Lcom/vungle/warren/AdLoader$DownloadCallback;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->a:Lcom/vungle/warren/AdLoader$DownloadCallback;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/DownloadCallbackWrapper;)Lcom/vungle/warren/AdLoader$DownloadCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->a:Lcom/vungle/warren/AdLoader$DownloadCallback;

    return-object p0
.end method


# virtual methods
.method public onDownloadCompleted(Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->a:Lcom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/DownloadCallbackWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/DownloadCallbackWrapper$1;-><init>(Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->a:Lcom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/DownloadCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/DownloadCallbackWrapper$2;-><init>(Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->a:Lcom/vungle/warren/AdLoader$DownloadCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/DownloadCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/DownloadCallbackWrapper$3;-><init>(Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.DownloadCallbackWrapper.AnonymousClass1 (com.vungle.warren.DownloadCallbackWrapper$1)
.class Lcom/vungle/warren/DownloadCallbackWrapper$1;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadCompleted(Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/AdRequest;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/vungle/warren/DownloadCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$1;->q:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$1;->o:Lcom/vungle/warren/AdRequest;

    iput-object p3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$1;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper$1;->q:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/DownloadCallbackWrapper;->a(Lcom/vungle/warren/DownloadCallbackWrapper;)Lcom/vungle/warren/AdLoader$DownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$1;->o:Lcom/vungle/warren/AdRequest;

    iget-object v2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$1;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadCompleted(Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.DownloadCallbackWrapper.AnonymousClass2 (com.vungle.warren.DownloadCallbackWrapper$2)
.class Lcom/vungle/warren/DownloadCallbackWrapper$2;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/error/VungleException;

.field final synthetic p:Lcom/vungle/warren/AdRequest;

.field final synthetic q:Ljava/lang/String;

.field final synthetic r:Lcom/vungle/warren/DownloadCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->r:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->o:Lcom/vungle/warren/error/VungleException;

    iput-object p3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->p:Lcom/vungle/warren/AdRequest;

    iput-object p4, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->r:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/DownloadCallbackWrapper;->a(Lcom/vungle/warren/DownloadCallbackWrapper;)Lcom/vungle/warren/AdLoader$DownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->o:Lcom/vungle/warren/error/VungleException;

    iget-object v2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->p:Lcom/vungle/warren/AdRequest;

    iget-object v3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$2;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.DownloadCallbackWrapper.AnonymousClass3 (com.vungle.warren.DownloadCallbackWrapper$3)
.class Lcom/vungle/warren/DownloadCallbackWrapper$3;
.super Ljava/lang/Object;
.source "DownloadCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/DownloadCallbackWrapper;->onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/AdRequest;

.field final synthetic p:Lcom/vungle/warren/model/Placement;

.field final synthetic q:Lcom/vungle/warren/model/Advertisement;

.field final synthetic r:Lcom/vungle/warren/DownloadCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->r:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->o:Lcom/vungle/warren/AdRequest;

    iput-object p3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->p:Lcom/vungle/warren/model/Placement;

    iput-object p4, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->q:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->r:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/DownloadCallbackWrapper;->a(Lcom/vungle/warren/DownloadCallbackWrapper;)Lcom/vungle/warren/AdLoader$DownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->o:Lcom/vungle/warren/AdRequest;

    iget-object v2, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->p:Lcom/vungle/warren/model/Placement;

    iget-object v3, p0, Lcom/vungle/warren/DownloadCallbackWrapper$3;->q:Lcom/vungle/warren/model/Advertisement;

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void
.end method

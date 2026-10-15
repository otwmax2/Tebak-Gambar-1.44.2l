###### Class com.vungle.warren.InitCallbackWrapper (com.vungle.warren.InitCallbackWrapper)
.class Lcom/vungle/warren/InitCallbackWrapper;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/InitCallback;


# instance fields
.field private final a:Lcom/vungle/warren/InitCallback;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/InitCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/vungle/warren/InitCallbackWrapper;->a:Lcom/vungle/warren/InitCallback;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/InitCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/InitCallbackWrapper;)Lcom/vungle/warren/InitCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/InitCallbackWrapper;->a:Lcom/vungle/warren/InitCallback;

    return-object p0
.end method


# virtual methods
.method public onAutoCacheAdAvailable(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->a:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/InitCallbackWrapper$3;-><init>(Lcom/vungle/warren/InitCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/vungle/warren/error/VungleException;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->a:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/InitCallbackWrapper$2;-><init>(Lcom/vungle/warren/InitCallbackWrapper;Lcom/vungle/warren/error/VungleException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->a:Lcom/vungle/warren/InitCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/InitCallbackWrapper$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/InitCallbackWrapper$1;-><init>(Lcom/vungle/warren/InitCallbackWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.InitCallbackWrapper.AnonymousClass1 (com.vungle.warren.InitCallbackWrapper$1)
.class Lcom/vungle/warren/InitCallbackWrapper$1;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/InitCallbackWrapper;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/InitCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/InitCallbackWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/InitCallbackWrapper$1;->o:Lcom/vungle/warren/InitCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper$1;->o:Lcom/vungle/warren/InitCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/InitCallbackWrapper;->a(Lcom/vungle/warren/InitCallbackWrapper;)Lcom/vungle/warren/InitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/InitCallback;->onSuccess()V

    return-void
.end method

###### Class com.vungle.warren.InitCallbackWrapper.AnonymousClass2 (com.vungle.warren.InitCallbackWrapper$2)
.class Lcom/vungle/warren/InitCallbackWrapper$2;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/InitCallbackWrapper;->onError(Lcom/vungle/warren/error/VungleException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/error/VungleException;

.field final synthetic p:Lcom/vungle/warren/InitCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/InitCallbackWrapper;Lcom/vungle/warren/error/VungleException;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/InitCallbackWrapper$2;->p:Lcom/vungle/warren/InitCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/InitCallbackWrapper$2;->o:Lcom/vungle/warren/error/VungleException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper$2;->p:Lcom/vungle/warren/InitCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/InitCallbackWrapper;->a(Lcom/vungle/warren/InitCallbackWrapper;)Lcom/vungle/warren/InitCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/InitCallbackWrapper$2;->o:Lcom/vungle/warren/error/VungleException;

    invoke-interface {v0, v1}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

###### Class com.vungle.warren.InitCallbackWrapper.AnonymousClass3 (com.vungle.warren.InitCallbackWrapper$3)
.class Lcom/vungle/warren/InitCallbackWrapper$3;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/InitCallbackWrapper;->onAutoCacheAdAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/InitCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/InitCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/InitCallbackWrapper$3;->p:Lcom/vungle/warren/InitCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/InitCallbackWrapper$3;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/InitCallbackWrapper$3;->p:Lcom/vungle/warren/InitCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/InitCallbackWrapper;->a(Lcom/vungle/warren/InitCallbackWrapper;)Lcom/vungle/warren/InitCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/InitCallbackWrapper$3;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/InitCallback;->onAutoCacheAdAvailable(Ljava/lang/String;)V

    return-void
.end method

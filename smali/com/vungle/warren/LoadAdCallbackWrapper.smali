###### Class com.vungle.warren.LoadAdCallbackWrapper (com.vungle.warren.LoadAdCallbackWrapper)
.class Lcom/vungle/warren/LoadAdCallbackWrapper;
.super Ljava/lang/Object;
.source "LoadAdCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# instance fields
.field private final a:Lcom/vungle/warren/LoadAdCallback;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->a:Lcom/vungle/warren/LoadAdCallback;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/LoadAdCallbackWrapper;)Lcom/vungle/warren/LoadAdCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->a:Lcom/vungle/warren/LoadAdCallback;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 2
    :cond_12
    check-cast p1, Lcom/vungle/warren/LoadAdCallbackWrapper;

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->a:Lcom/vungle/warren/LoadAdCallback;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/vungle/warren/LoadAdCallbackWrapper;->a:Lcom/vungle/warren/LoadAdCallback;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/vungle/warren/LoadAdCallbackWrapper;->a:Lcom/vungle/warren/LoadAdCallback;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 4
    :cond_26
    iget-object v2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lcom/vungle/warren/LoadAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_31

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_35

    :cond_31
    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0

    :cond_36
    :goto_36
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->a:Lcom/vungle/warren/LoadAdCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public onAdLoad(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->a:Lcom/vungle/warren/LoadAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/LoadAdCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/LoadAdCallbackWrapper$1;-><init>(Lcom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->a:Lcom/vungle/warren/LoadAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/LoadAdCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/LoadAdCallbackWrapper$2;-><init>(Lcom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.LoadAdCallbackWrapper.AnonymousClass1 (com.vungle.warren.LoadAdCallbackWrapper$1)
.class Lcom/vungle/warren/LoadAdCallbackWrapper$1;
.super Ljava/lang/Object;
.source "LoadAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/LoadAdCallbackWrapper;->onAdLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/LoadAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$1;->p:Lcom/vungle/warren/LoadAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$1;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$1;->p:Lcom/vungle/warren/LoadAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/LoadAdCallbackWrapper;->a(Lcom/vungle/warren/LoadAdCallbackWrapper;)Lcom/vungle/warren/LoadAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$1;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/LoadAdCallback;->onAdLoad(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.LoadAdCallbackWrapper.AnonymousClass2 (com.vungle.warren.LoadAdCallbackWrapper$2)
.class Lcom/vungle/warren/LoadAdCallbackWrapper$2;
.super Ljava/lang/Object;
.source "LoadAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/LoadAdCallbackWrapper;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/error/VungleException;

.field final synthetic q:Lcom/vungle/warren/LoadAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->q:Lcom/vungle/warren/LoadAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->p:Lcom/vungle/warren/error/VungleException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->q:Lcom/vungle/warren/LoadAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/LoadAdCallbackWrapper;->a(Lcom/vungle/warren/LoadAdCallbackWrapper;)Lcom/vungle/warren/LoadAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper$2;->p:Lcom/vungle/warren/error/VungleException;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

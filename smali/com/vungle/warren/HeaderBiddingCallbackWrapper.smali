###### Class com.vungle.warren.HeaderBiddingCallbackWrapper (com.vungle.warren.HeaderBiddingCallbackWrapper)
.class public Lcom/vungle/warren/HeaderBiddingCallbackWrapper;
.super Ljava/lang/Object;
.source "HeaderBiddingCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/HeaderBiddingCallback;


# instance fields
.field private final a:Lcom/vungle/warren/HeaderBiddingCallback;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/HeaderBiddingCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->a:Lcom/vungle/warren/HeaderBiddingCallback;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;)Lcom/vungle/warren/HeaderBiddingCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->a:Lcom/vungle/warren/HeaderBiddingCallback;

    return-object p0
.end method


# virtual methods
.method public adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->a:Lcom/vungle/warren/HeaderBiddingCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;-><init>(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->a:Lcom/vungle/warren/HeaderBiddingCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;-><init>(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.HeaderBiddingCallbackWrapper.AnonymousClass1 (com.vungle.warren.HeaderBiddingCallbackWrapper$1)
.class Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;
.super Ljava/lang/Object;
.source "HeaderBiddingCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;->q:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;->q:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->a(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;)Lcom/vungle/warren/HeaderBiddingCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$1;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/HeaderBiddingCallback;->onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.HeaderBiddingCallbackWrapper.AnonymousClass2 (com.vungle.warren.HeaderBiddingCallbackWrapper$2)
.class Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;
.super Ljava/lang/Object;
.source "HeaderBiddingCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->q:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->q:Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;->a(Lcom/vungle/warren/HeaderBiddingCallbackWrapper;)Lcom/vungle/warren/HeaderBiddingCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/HeaderBiddingCallbackWrapper$2;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/HeaderBiddingCallback;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.utility.WeakRunnable (com.vungle.warren.utility.WeakRunnable)
.class public Lcom/vungle/warren/utility/WeakRunnable;
.super Ljava/lang/Object;
.source "WeakRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/WeakRunnable;->o:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/WeakRunnable;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_d
    return-void
.end method

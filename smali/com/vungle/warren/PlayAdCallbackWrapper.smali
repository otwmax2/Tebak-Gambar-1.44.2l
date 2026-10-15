###### Class com.vungle.warren.PlayAdCallbackWrapper (com.vungle.warren.PlayAdCallbackWrapper)
.class Lcom/vungle/warren/PlayAdCallbackWrapper;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# instance fields
.field private final a:Lcom/vungle/warren/PlayAdCallback;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/PlayAdCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    return-object p0
.end method


# virtual methods
.method public creativeId(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/PlayAdCallbackWrapper$1;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdClick(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$5;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/PlayAdCallbackWrapper$5;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/PlayAdCallbackWrapper$4;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/warren/PlayAdCallbackWrapper$3;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/PlayAdCallbackWrapper$6;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$7;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/PlayAdCallbackWrapper$7;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/PlayAdCallbackWrapper$2;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$9;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/PlayAdCallbackWrapper$9;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->a:Lcom/vungle/warren/PlayAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/PlayAdCallbackWrapper$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/PlayAdCallbackWrapper$8;-><init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass1 (com.vungle.warren.PlayAdCallbackWrapper$1)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$1;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->creativeId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$1;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$1;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$1;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$1;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/PlayAdCallback;->creativeId(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass2 (com.vungle.warren.PlayAdCallbackWrapper$2)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$2;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onAdStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$2;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$2;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$2;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$2;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/PlayAdCallback;->onAdStart(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass3 (com.vungle.warren.PlayAdCallbackWrapper$3)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$3;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onAdEnd(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Z

.field final synthetic q:Z

.field final synthetic r:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;ZZ)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$3;->r:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$3;->o:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$3;->p:Z

    iput-boolean p4, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$3;->q:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$3;->r:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$3;->o:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$3;->p:Z

    iget-boolean v3, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$3;->q:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;ZZ)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass4 (com.vungle.warren.PlayAdCallbackWrapper$4)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$4;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onAdEnd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$4;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$4;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$4;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$4;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass5 (com.vungle.warren.PlayAdCallbackWrapper$5)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$5;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onAdClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$5;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$5;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$5;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$5;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/PlayAdCallback;->onAdClick(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass6 (com.vungle.warren.PlayAdCallbackWrapper$6)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$6;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onAdLeftApplication(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$6;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$6;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$6;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$6;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/PlayAdCallback;->onAdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass7 (com.vungle.warren.PlayAdCallbackWrapper$7)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$7;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onAdRewarded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$7;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$7;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$7;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$7;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/PlayAdCallback;->onAdRewarded(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass8 (com.vungle.warren.PlayAdCallbackWrapper$8)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$8;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/error/VungleException;

.field final synthetic q:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$8;->q:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$8;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$8;->p:Lcom/vungle/warren/error/VungleException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$8;->q:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$8;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$8;->p:Lcom/vungle/warren/error/VungleException;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

###### Class com.vungle.warren.PlayAdCallbackWrapper.AnonymousClass9 (com.vungle.warren.PlayAdCallbackWrapper$9)
.class Lcom/vungle/warren/PlayAdCallbackWrapper$9;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onAdViewed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/PlayAdCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$9;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$9;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$9;->p:Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->a(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$9;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/PlayAdCallback;->onAdViewed(Ljava/lang/String;)V

    return-void
.end method

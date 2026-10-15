###### Class com.google.android.play.core.assetpacks.y (com.google.android.play.core.assetpacks.y)
.class final Lcom/google/android/play/core/assetpacks/y;
.super Lw4/d;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lcom/google/android/play/core/assetpacks/AssetPackState;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/google/android/play/core/assetpacks/w1;

.field private final h:Lcom/google/android/play/core/assetpacks/e1;

.field private final i:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/play/core/assetpacks/r0;

.field private final k:Lcom/google/android/play/core/assetpacks/h1;

.field private final l:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/android/play/core/assetpacks/p2;

.field private final o:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/w1;Lcom/google/android/play/core/assetpacks/e1;Lv4/y;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/r0;Lv4/y;Lv4/y;Lcom/google/android/play/core/assetpacks/p2;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/play/core/assetpacks/w1;",
            "Lcom/google/android/play/core/assetpacks/e1;",
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/h1;",
            "Lcom/google/android/play/core/assetpacks/r0;",
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "AssetPackServiceListenerRegistry"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lw4/d;-><init>(Lv4/a;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/y;->o:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/y;->g:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/y;->h:Lcom/google/android/play/core/assetpacks/e1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/y;->i:Lv4/y;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/y;->k:Lcom/google/android/play/core/assetpacks/h1;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/y;->j:Lcom/google/android/play/core/assetpacks/r0;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/y;->l:Lv4/y;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/y;->m:Lv4/y;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/y;->n:Lcom/google/android/play/core/assetpacks/p2;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p1, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6e

    const-string v0, "pack_names"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    goto :goto_64

    .line 4
    :cond_19
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/y;->k:Lcom/google/android/play/core/assetpacks/h1;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/y;->n:Lcom/google/android/play/core/assetpacks/p2;

    sget-object v4, Lcom/google/android/play/core/assetpacks/a0;->a:Lcom/google/android/play/core/assetpacks/a0;

    .line 5
    invoke-static {p1, v0, v1, v3, v4}, Lcom/google/android/play/core/assetpacks/AssetPackState;->i(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;Lcom/google/android/play/core/assetpacks/b0;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v0

    iget-object v1, p0, Lw4/d;->a:Lv4/a;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p2

    const-string p2, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    .line 6
    invoke-virtual {v1, p2, v2}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p2, "confirmation_intent"

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p2, :cond_43

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/y;->j:Lcom/google/android/play/core/assetpacks/r0;

    .line 8
    invoke-virtual {v1, p2}, Lcom/google/android/play/core/assetpacks/r0;->a(Landroid/app/PendingIntent;)V

    :cond_43
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/y;->m:Lv4/y;

    .line 9
    invoke-interface {p2}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/v;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/v;-><init>(Lcom/google/android/play/core/assetpacks/y;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    .line 10
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/y;->l:Lv4/y;

    .line 11
    invoke-interface {p2}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/assetpacks/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/u;-><init>(Lcom/google/android/play/core/assetpacks/y;Landroid/os/Bundle;)V

    .line 12
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_64
    :goto_64
    iget-object p1, p0, Lw4/d;->a:Lv4/a;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Corrupt bundle received from broadcast."

    .line 14
    invoke-virtual {p1, v0, p2}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 15
    :cond_6e
    iget-object p1, p0, Lw4/d;->a:Lv4/a;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Empty bundle received from broadcast."

    .line 16
    invoke-virtual {p1, v0, p2}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method final synthetic f(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y;->g:Lcom/google/android/play/core/assetpacks/w1;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/w1;->n(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/y;->h:Lcom/google/android/play/core/assetpacks/e1;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/e1;->a()V

    :cond_d
    return-void
.end method

.method final synthetic g(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y;->g:Lcom/google/android/play/core/assetpacks/w1;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/w1;->m(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/play/core/assetpacks/y;->h(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/y;->i:Lv4/y;

    .line 3
    invoke-interface {p1}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/u3;

    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/u3;->c()V

    :cond_16
    return-void
.end method

.method final h(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y;->o:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/assetpacks/x;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/x;-><init>(Lcom/google/android/play/core/assetpacks/y;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.a0 (com.google.android.play.core.assetpacks.a0)
.class public final synthetic Lcom/google/android/play/core/assetpacks/a0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/b0;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/assetpacks/a0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/a0;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/a0;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/a0;->a:Lcom/google/android/play/core/assetpacks/a0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P(ILjava/lang/String;)I
    .registers 3

    return p1
.end method

###### Class com.google.android.play.core.assetpacks.u (com.google.android.play.core.assetpacks.u)
.class public final synthetic Lcom/google/android/play/core/assetpacks/u;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/y;

.field public final synthetic p:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/y;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/u;->o:Lcom/google/android/play/core/assetpacks/y;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/u;->p:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/u;->o:Lcom/google/android/play/core/assetpacks/y;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/u;->p:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/y;->f(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.v (com.google.android.play.core.assetpacks.v)
.class public final synthetic Lcom/google/android/play/core/assetpacks/v;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/y;

.field public final synthetic p:Landroid/os/Bundle;

.field public final synthetic q:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/y;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/v;->o:Lcom/google/android/play/core/assetpacks/y;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/v;->p:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/v;->q:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/v;->o:Lcom/google/android/play/core/assetpacks/y;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/v;->p:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/v;->q:Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/y;->g(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.x (com.google.android.play.core.assetpacks.x)
.class public final synthetic Lcom/google/android/play/core/assetpacks/x;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/y;

.field public final synthetic p:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/y;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/x;->o:Lcom/google/android/play/core/assetpacks/y;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/x;->p:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/x;->o:Lcom/google/android/play/core/assetpacks/y;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/x;->p:Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1}, Lw4/d;->d(Ljava/lang/Object;)V

    return-void
.end method

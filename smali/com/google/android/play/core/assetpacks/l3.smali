###### Class com.google.android.play.core.assetpacks.l3 (com.google.android.play.core.assetpacks.l3)
.class final Lcom/google/android/play/core/assetpacks/l3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final l:Lv4/a;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/e0;

.field private final b:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/assetpacks/y;

.field private final d:Lx4/a;

.field private final e:Lcom/google/android/play/core/assetpacks/w1;

.field private final f:Lcom/google/android/play/core/assetpacks/h1;

.field private final g:Lcom/google/android/play/core/assetpacks/r0;

.field private final h:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lu4/b;

.field private final j:Lcom/google/android/play/core/assetpacks/p2;

.field private final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/l3;->l:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;Lcom/google/android/play/core/assetpacks/y;Lx4/a;Lcom/google/android/play/core/assetpacks/w1;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/r0;Lv4/y;Lu4/b;Lcom/google/android/play/core/assetpacks/p2;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/e0;",
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/y;",
            "Lx4/a;",
            "Lcom/google/android/play/core/assetpacks/w1;",
            "Lcom/google/android/play/core/assetpacks/h1;",
            "Lcom/google/android/play/core/assetpacks/r0;",
            "Lv4/y<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lu4/b;",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/l3;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/l3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/l3;->b:Lv4/y;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/l3;->c:Lcom/google/android/play/core/assetpacks/y;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/l3;->d:Lx4/a;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/l3;->e:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/l3;->f:Lcom/google/android/play/core/assetpacks/h1;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/l3;->g:Lcom/google/android/play/core/assetpacks/r0;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/l3;->h:Lv4/y;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/l3;->i:Lu4/b;

    iput-object p10, p0, Lcom/google/android/play/core/assetpacks/l3;->j:Lcom/google/android/play/core/assetpacks/p2;

    return-void
.end method

.method static synthetic a(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/l3;->l:Lv4/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Could not sync active asset packs. %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/l3;->h:Lv4/y;

    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/k3;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/k3;-><init>(Lcom/google/android/play/core/assetpacks/l3;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final synthetic b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/l3;->b:Lv4/y;

    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/u3;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/l3;->a:Lcom/google/android/play/core/assetpacks/e0;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/e0;->G()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/u3;->e(Ljava/util/Map;)Ly4/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/l3;->h:Lv4/y;

    .line 3
    invoke-interface {v1}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/l3;->a:Lcom/google/android/play/core/assetpacks/e0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/play/core/assetpacks/j3;

    invoke-direct {v3, v2}, Lcom/google/android/play/core/assetpacks/j3;-><init>(Lcom/google/android/play/core/assetpacks/e0;)V

    .line 4
    invoke-virtual {v0, v1, v3}, Ly4/e;->c(Ljava/util/concurrent/Executor;Ly4/c;)Ly4/e;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/l3;->h:Lv4/y;

    .line 5
    invoke-interface {v1}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/play/core/assetpacks/i3;->a:Lcom/google/android/play/core/assetpacks/i3;

    .line 6
    invoke-virtual {v0, v1, v2}, Ly4/e;->b(Ljava/util/concurrent/Executor;Ly4/b;)Ly4/e;

    return-void
.end method

.method final c(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/l3;->c:Lcom/google/android/play/core/assetpacks/y;

    invoke-virtual {v0}, Lw4/d;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/l3;->c:Lcom/google/android/play/core/assetpacks/y;

    .line 2
    invoke-virtual {v1, p1}, Lw4/d;->c(Z)V

    if-eqz p1, :cond_12

    if-nez v0, :cond_12

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/l3;->d()V

    :cond_12
    return-void
.end method

###### Class com.google.android.play.core.assetpacks.i3 (com.google.android.play.core.assetpacks.i3)
.class public final synthetic Lcom/google/android/play/core/assetpacks/i3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ly4/b;


# static fields
.field public static final synthetic a:Lcom/google/android/play/core/assetpacks/i3;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/i3;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/i3;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/i3;->a:Lcom/google/android/play/core/assetpacks/i3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/l3;->a(Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.j3 (com.google.android.play.core.assetpacks.j3)
.class public final synthetic Lcom/google/android/play/core/assetpacks/j3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ly4/c;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/e0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/e0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/j3;->a:Lcom/google/android/play/core/assetpacks/e0;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/j3;->a:Lcom/google/android/play/core/assetpacks/e0;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/e0;->c(Ljava/util/List;)V

    return-void
.end method

###### Class com.google.android.play.core.assetpacks.k3 (com.google.android.play.core.assetpacks.k3)
.class public final synthetic Lcom/google/android/play/core/assetpacks/k3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/play/core/assetpacks/l3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/l3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/k3;->o:Lcom/google/android/play/core/assetpacks/l3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k3;->o:Lcom/google/android/play/core/assetpacks/l3;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/l3;->b()V

    return-void
.end method

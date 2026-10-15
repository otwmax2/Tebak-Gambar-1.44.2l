###### Class com.google.android.gms.internal.ads.zzfhp (com.google.android.gms.internal.ads.zzfhp)
.class public final Lcom/google/android/gms/internal/ads/zzfhp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static volatile e:I = 0x1

.field public static final synthetic f:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/tasks/Task;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Task;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhp;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhp;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhp;->c:Lcom/google/android/gms/tasks/Task;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfhp;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfhp;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    if-eqz p2, :cond_10

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfhl;-><init>(Landroid/content/Context;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18

    .line 3
    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfhm;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    :goto_18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfhp;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Task;Z)V

    return-object v1
.end method

.method static g(I)V
    .registers 1

    sput p0, Lcom/google/android/gms/internal/ads/zzfhp;->e:I

    return-void
.end method

.method private final h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 9

    .line 1
    iget-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzfhp;->d:Z

    if-nez p6, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhp;->c:Lcom/google/android/gms/tasks/Task;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhp;->b:Ljava/util/concurrent/Executor;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzfhn;->a:Lcom/google/android/gms/internal/ads/zzfhn;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 2
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaml;->I()Lcom/google/android/gms/internal/ads/zzamh;

    move-result-object p6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/ads/zzamh;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {p6, p2, p3}, Lcom/google/android/gms/internal/ads/zzamh;->s(J)Lcom/google/android/gms/internal/ads/zzamh;

    sget p2, Lcom/google/android/gms/internal/ads/zzfhp;->e:I

    .line 3
    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/zzamh;->v(I)Lcom/google/android/gms/internal/ads/zzamh;

    if-eqz p4, :cond_38

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzfol;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/zzamh;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/ads/zzamh;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    :cond_38
    if-eqz p7, :cond_3d

    .line 6
    invoke-virtual {p6, p7}, Lcom/google/android/gms/internal/ads/zzamh;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    :cond_3d
    if-eqz p5, :cond_42

    .line 7
    invoke-virtual {p6, p5}, Lcom/google/android/gms/internal/ads/zzamh;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    :cond_42
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhp;->c:Lcom/google/android/gms/tasks/Task;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhp;->b:Ljava/util/concurrent/Executor;

    .line 8
    new-instance p4, Lcom/google/android/gms/internal/ads/zzfho;

    invoke-direct {p4, p6, p1}, Lcom/google/android/gms/internal/ads/zzfho;-><init>(Lcom/google/android/gms/internal/ads/zzamh;I)V

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/tasks/Task;->l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final b(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 11

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfhp;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfhp;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final d(IJ)Lcom/google/android/gms/tasks/Task;
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfhp;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final e(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v7, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfhp;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final f(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .registers 14

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfhp;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzfhl (com.google.android.gms.internal.ads.zzfhl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhl;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhl;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhl;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhl;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string v2, "GLAS"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjr;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjr;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfhm (com.google.android.gms.internal.ads.zzfhm)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhm;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhm;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjr;->c()Lcom/google/android/gms/internal/ads/zzfjr;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzfhn (com.google.android.gms.internal.ads.zzfhn)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfhn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzfhn;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhn;->a:Lcom/google/android/gms/internal/ads/zzfhn;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzfho (com.google.android.gms.internal.ads.zzfho)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzamh;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzamh;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfho;->a:Lcom/google/android/gms/internal/ads/zzamh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfho;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfho;->a:Lcom/google/android/gms/internal/ads/zzamh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfho;->b:I

    sget v2, Lcom/google/android/gms/internal/ads/zzfhp;->f:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfjr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfjr;->a([B)Lcom/google/android/gms/internal/ads/zzfjq;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfjq;->a(I)Lcom/google/android/gms/internal/ads/zzfjq;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjq;->c()V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2b

    .line 7
    :cond_29
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2b
    return-object p1
.end method

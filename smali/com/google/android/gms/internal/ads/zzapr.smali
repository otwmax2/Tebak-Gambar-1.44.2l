###### Class com.google.android.gms.internal.ads.zzapr (com.google.android.gms.internal.ads.zzapr)
.class public final Lcom/google/android/gms/internal/ads/zzapr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final c:Landroid/os/ConditionVariable;

.field protected static volatile d:Lcom/google/android/gms/internal/ads/zzfjr;

.field private static volatile e:Ljava/util/Random;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaqx;

.field protected volatile b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzapr;->c:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzapr;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzapr;->e:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->a:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqx;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(Lcom/google/android/gms/internal/ads/zzapr;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic a()Landroid/os/ConditionVariable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzapr;->c:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzapr;)Lcom/google/android/gms/internal/ads/zzaqx;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzapr;->a:Lcom/google/android/gms/internal/ads/zzaqx;

    return-object p0
.end method

.method public static final d()I
    .registers 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    return v0

    .line 2
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzapr;->e()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_17} :catch_18

    return v0

    .line 3
    :catch_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzapr;->e()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private static e()Ljava/util/Random;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzapr;->e:Ljava/util/Random;

    if-nez v0, :cond_17

    const-class v0, Lcom/google/android/gms/internal/ads/zzapr;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzapr;->e:Ljava/util/Random;

    if-nez v1, :cond_12

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzapr;->e:Ljava/util/Random;

    .line 2
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzapr;->e:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public final c(IIJLjava/lang/String;Ljava/lang/Exception;)V
    .registers 9

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzapr;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->b:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Lcom/google/android/gms/internal/ads/zzapr;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    if-eqz v0, :cond_65

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaml;->I()Lcom/google/android/gms/internal/ads/zzamh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->a:Lcom/google/android/gms/internal/ads/zzaqx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqx;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamh;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzamh;->s(J)Lcom/google/android/gms/internal/ads/zzamh;

    if-eqz p5, :cond_28

    .line 6
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzamh;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    :cond_28
    if-eqz p6, :cond_49

    new-instance p3, Ljava/io/StringWriter;

    .line 7
    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    new-instance p4, Ljava/io/PrintWriter;

    .line 8
    invoke-direct {p4, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p6, p4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 9
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzamh;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzamh;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamh;

    :cond_49
    sget-object p3, Lcom/google/android/gms/internal/ads/zzapr;->d:Lcom/google/android/gms/internal/ads/zzfjr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzaml;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzfjr;->a([B)Lcom/google/android/gms/internal/ads/zzfjq;

    move-result-object p3

    .line 12
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfjq;->a(I)Lcom/google/android/gms/internal/ads/zzfjq;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_62

    .line 13
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfjq;->b(I)Lcom/google/android/gms/internal/ads/zzfjq;

    .line 14
    :cond_62
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfjq;->c()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_65

    :catch_65
    :cond_65
    return-void
.end method

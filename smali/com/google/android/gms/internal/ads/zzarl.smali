###### Class com.google.android.gms.internal.ads.zzarl (com.google.android.gms.internal.ads.zzarl)
.class public final Lcom/google/android/gms/internal/ads/zzarl;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final j:Lcom/google/android/gms/internal/ads/zzasn;


# instance fields
.field private final i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzarl;->j:Lcom/google/android/gms/internal/ads/zzasn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;IILandroid/content/Context;)V
    .registers 15

    const-string v2, "GiGLjdugkD/A/Nktl1YTMtFZ30miEp5ujxoBBsS1JjEnt8RpwdFKjPJMmiyB3Gih"

    const-string v3, "lGLGd1/lOSwZNvJFVMee07xTqqB6gC2uy3r930yIvSk="

    const/16 v6, 0x1d

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzarl;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamv;->n0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzarl;->j:Lcom/google/android/gms/internal/ads/zzasn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->i:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasn;->a(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_39

    .line 4
    monitor-enter v0

    .line 5
    :try_start_1b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzarl;->i:Landroid/content/Context;

    aput-object v6, v4, v5

    .line 6
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    :cond_34
    monitor-exit v0

    goto :goto_39

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_36

    throw v1

    .line 8
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 9
    monitor-enter v1

    :try_start_42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaoh;->a([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzamv;->n0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamv;

    .line 11
    monitor-exit v1

    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_51

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzcgd (com.google.android.gms.internal.ads.zzcgd)
.class public abstract Lcom/google/android/gms/internal/ads/zzcgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzclp;


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/zzcgd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "AppComponent.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbnf;IZILcom/google/android/gms/internal/ads/zzchg;)Lcom/google/android/gms/internal/ads/zzcgd;
    .registers 15
    .param p1    # Lcom/google/android/gms/internal/ads/zzbnf;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class p2, Lcom/google/android/gms/internal/ads/zzcgd;

    monitor-enter p2

    .line 1
    :try_start_3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcgd;->a:Lcom/google/android/gms/internal/ads/zzcgd;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d5

    if-eqz p3, :cond_9

    monitor-exit p2

    return-object p3

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzezq;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzezq;

    move-result-object p3

    const v0, 0xdbd26a0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/gms/internal/ads/zzezq;->c(IZI)Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v4

    .line 4
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzezq;->e(Lcom/google/android/gms/internal/ads/zzbnf;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzciu;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzciu;-><init>(Lcom/google/android/gms/internal/ads/zzcit;)V

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcge;

    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/zzcge;-><init>()V

    .line 5
    invoke-virtual {p4, v4}, Lcom/google/android/gms/internal/ads/zzcge;->d(Lcom/google/android/gms/internal/ads/zzbzg;)Lcom/google/android/gms/internal/ads/zzcge;

    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzcge;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcge;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgg;

    invoke-direct {v0, p4, p3}, Lcom/google/android/gms/internal/ads/zzcgg;-><init>(Lcom/google/android/gms/internal/ads/zzcge;Lcom/google/android/gms/internal/ads/zzcgf;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzciu;->b(Lcom/google/android/gms/internal/ads/zzcgg;)Lcom/google/android/gms/internal/ads/zzciu;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzckh;

    invoke-direct {p4, p5, p3}, Lcom/google/android/gms/internal/ads/zzckh;-><init>(Lcom/google/android/gms/internal/ads/zzchg;[B)V

    .line 7
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzciu;->c(Lcom/google/android/gms/internal/ads/zzckh;)Lcom/google/android/gms/internal/ads/zzciu;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzciu;->a()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p3

    invoke-virtual {p3, p0, v4}, Lcom/google/android/gms/internal/ads/zzbyj;->s(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->e()Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzavm;->i(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->I(Landroid/content/Context;)Z

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->H(Landroid/content/Context;)Z

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzd;->a(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->d()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzatz;->d(Landroid/content/Context;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->x()Lcom/google/android/gms/ads/internal/util/zzcg;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzcg;->b(Landroid/content/Context;)V

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbxg;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxg;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->L5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 18
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_d1

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->s0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 20
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_d1

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdzx;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzawe;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzawk;

    .line 21
    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/ads/zzawk;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/zzawe;-><init>(Lcom/google/android/gms/internal/ads/zzawk;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzdyx;

    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/ads/zzdyx;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgd;->C()Lcom/google/android/gms/internal/ads/zzfuu;

    move-result-object p5

    invoke-direct {v6, p4, p5}, Lcom/google/android/gms/internal/ads/zzdzb;-><init>(Lcom/google/android/gms/internal/ads/zzdyx;Lcom/google/android/gms/internal/ads/zzfuu;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgd;->A()Lcom/google/android/gms/internal/ads/zzfdk;

    move-result-object v8

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzdzb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfdk;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzdzx;->b(Z)V

    :cond_d1
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcgd;->a:Lcom/google/android/gms/internal/ads/zzcgd;
    :try_end_d3
    .catchall {:try_start_9 .. :try_end_d3} :catchall_d5

    monitor-exit p2

    return-object p1

    :catchall_d5
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public static e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbnf;I)Lcom/google/android/gms/internal/ads/zzcgd;
    .registers 9
    .param p1    # Lcom/google/android/gms/internal/ads/zzbnf;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzchg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzchg;-><init>()V

    const v2, 0xdbd26a0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgd;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbnf;IZILcom/google/android/gms/internal/ads/zzchg;)Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract A()Lcom/google/android/gms/internal/ads/zzfdk;
.end method

.method public abstract B()Lcom/google/android/gms/internal/ads/zzfep;
.end method

.method public abstract C()Lcom/google/android/gms/internal/ads/zzfuu;
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzbtn;I)Lcom/google/android/gms/internal/ads/zzeqf;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzesh;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzesh;-><init>(Lcom/google/android/gms/internal/ads/zzbtn;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcgd;->t(Lcom/google/android/gms/internal/ads/zzesh;)Lcom/google/android/gms/internal/ads/zzeqf;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()Ljava/util/concurrent/Executor;
.end method

.method public abstract c()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract f()Lcom/google/android/gms/internal/ads/zzcks;
.end method

.method public abstract g()Lcom/google/android/gms/internal/ads/zzcnx;
.end method

.method public abstract h()Lcom/google/android/gms/internal/ads/zzcpg;
.end method

.method public abstract i()Lcom/google/android/gms/internal/ads/zzcxd;
.end method

.method public abstract j()Lcom/google/android/gms/internal/ads/zzddv;
.end method

.method public abstract k()Lcom/google/android/gms/internal/ads/zzder;
.end method

.method public abstract l()Lcom/google/android/gms/internal/ads/zzdly;
.end method

.method public abstract m()Lcom/google/android/gms/internal/ads/zzdqq;
.end method

.method public abstract n()Lcom/google/android/gms/internal/ads/zzdsf;
.end method

.method public abstract o()Lcom/google/android/gms/internal/ads/zzdsz;
.end method

.method public abstract p()Lcom/google/android/gms/internal/ads/zzean;
.end method

.method public abstract q()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;
.end method

.method public abstract r()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
.end method

.method public abstract s()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;
.end method

.method protected abstract t(Lcom/google/android/gms/internal/ads/zzesh;)Lcom/google/android/gms/internal/ads/zzeqf;
.end method

.method public abstract u()Lcom/google/android/gms/internal/ads/zzetc;
.end method

.method public abstract v()Lcom/google/android/gms/internal/ads/zzeuq;
.end method

.method public abstract w()Lcom/google/android/gms/internal/ads/zzewh;
.end method

.method public abstract x()Lcom/google/android/gms/internal/ads/zzexv;
.end method

.method public abstract y()Lcom/google/android/gms/internal/ads/zzezj;
.end method

.method public abstract z()Lcom/google/android/gms/internal/ads/zzezt;
.end method

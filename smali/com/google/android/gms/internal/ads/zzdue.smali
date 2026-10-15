###### Class com.google.android.gms.internal.ads.zzdue (com.google.android.gms.internal.ads.zzdue)
.class public final Lcom/google/android/gms/internal/ads/zzdue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final c:Lcom/google/android/gms/internal/ads/zzfuu;

.field private final d:Lcom/google/android/gms/internal/ads/zzduv;

.field private final e:Lcom/google/android/gms/internal/ads/zzgws;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzfuu;Lcom/google/android/gms/internal/ads/zzduv;Lcom/google/android/gms/internal/ads/zzgws;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdue;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdue;->b:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdue;->c:Lcom/google/android/gms/internal/ads/zzfuu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdue;->d:Lcom/google/android/gms/internal/ads/zzduv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdue;->e:Lcom/google/android/gms/internal/ads/zzgws;

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/zzbtn;ILjava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdue;->e:Lcom/google/android/gms/internal/ads/zzgws;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzgws;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdxp;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxp;->Ua(Lcom/google/android/gms/internal/ads/zzbtn;I)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzbtn;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbtn;->r:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvi;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(I)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    goto :goto_3a

    .line 5
    :cond_16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->c7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdue;->c:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzduc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzduc;-><init>(Lcom/google/android/gms/internal/ads/zzdue;Lcom/google/android/gms/internal/ads/zzbtn;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    goto :goto_3a

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdue;->d:Lcom/google/android/gms/internal/ads/zzduv;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzduv;->b(Lcom/google/android/gms/internal/ads/zzbtn;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    .line 10
    :goto_3a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfua;->D(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfua;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->c5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdue;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfuj;->n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfua;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdud;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdud;-><init>(Lcom/google/android/gms/internal/ads/zzdue;Lcom/google/android/gms/internal/ads/zzbtn;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdue;->b:Lcom/google/android/gms/internal/ads/zzfuu;

    const-class v1, Ljava/lang/Throwable;

    .line 15
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfuj;->f(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/zzbtn;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdue;->d:Lcom/google/android/gms/internal/ads/zzduv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzduv;->b(Lcom/google/android/gms/internal/ads/zzbtn;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->c5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzduc (com.google.android.gms.internal.ads.zzduc)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzduc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdue;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbtn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdue;Lcom/google/android/gms/internal/ads/zzbtn;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduc;->a:Lcom/google/android/gms/internal/ads/zzdue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzduc;->b:Lcom/google/android/gms/internal/ads/zzbtn;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduc;->a:Lcom/google/android/gms/internal/ads/zzdue;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduc;->b:Lcom/google/android/gms/internal/ads/zzbtn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdue;->c(Lcom/google/android/gms/internal/ads/zzbtn;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdud (com.google.android.gms.internal.ads.zzdud)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzftq;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdue;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbtn;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdue;Lcom/google/android/gms/internal/ads/zzbtn;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdud;->a:Lcom/google/android/gms/internal/ads/zzdue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdud;->b:Lcom/google/android/gms/internal/ads/zzbtn;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdud;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdud;->a:Lcom/google/android/gms/internal/ads/zzdue;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdud;->b:Lcom/google/android/gms/internal/ads/zzbtn;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdud;->c:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdue;->a(Lcom/google/android/gms/internal/ads/zzbtn;ILjava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

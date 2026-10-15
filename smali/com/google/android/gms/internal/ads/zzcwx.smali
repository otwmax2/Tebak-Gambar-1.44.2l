###### Class com.google.android.gms.internal.ads.zzcwx (com.google.android.gms.internal.ads.zzcwx)
.class public final Lcom/google/android/gms/internal/ads/zzcwx;
.super Lcom/google/android/gms/internal/ads/zzczy;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvi;
.implements Lcom/google/android/gms/internal/ads/zzcwn;


# instance fields
.field private final p:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzeyc;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzczy;-><init>(Ljava/util/Set;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwx;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwx;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    return-void
.end method

.method private final zzb()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->g7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->f0:Lcom/google/android/gms/ads/internal/client/zzs;

    if-eqz v0, :cond_2f

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzs;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcww;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcww;-><init>(Lcom/google/android/gms/internal/ads/zzcwx;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzczy;->W0(Lcom/google/android/gms/internal/ads/zzczx;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method final synthetic Y0(Lcom/google/android/gms/internal/ads/zzcwz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->f0:Lcom/google/android/gms/ads/internal/client/zzs;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcwz;->c(Lcom/google/android/gms/ads/internal/client/zzs;)V

    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcwx;->zzb()V

    :cond_a
    return-void
.end method

.method public final j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwx;->p:Lcom/google/android/gms/internal/ads/zzeyc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    return-void

    :cond_15
    :goto_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcwx;->zzb()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcww (com.google.android.gms.internal.ads.zzcww)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcww;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczx;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzcwx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcwx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcww;->a:Lcom/google/android/gms/internal/ads/zzcwx;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcww;->a:Lcom/google/android/gms/internal/ads/zzcwx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcwz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwx;->Y0(Lcom/google/android/gms/internal/ads/zzcwz;)V

    return-void
.end method

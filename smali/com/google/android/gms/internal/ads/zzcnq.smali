###### Class com.google.android.gms.internal.ads.zzcnq (com.google.android.gms.internal.ads.zzcnq)
.class public final Lcom/google/android/gms/internal/ads/zzcnq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatf;


# instance fields
.field private o:Lcom/google/android/gms/internal/ads/zzcei;

.field private final p:Ljava/util/concurrent/Executor;

.field private final q:Lcom/google/android/gms/internal/ads/zzcnc;

.field private final r:Lcom/google/android/gms/common/util/Clock;

.field private s:Z

.field private t:Z

.field private final u:Lcom/google/android/gms/internal/ads/zzcnf;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcnc;Lcom/google/android/gms/common/util/Clock;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->s:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->t:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcnf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->u:Lcom/google/android/gms/internal/ads/zzcnf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->p:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnq;->q:Lcom/google/android/gms/internal/ads/zzcnc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnq;->r:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final f()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->q:Lcom/google/android/gms/internal/ads/zzcnc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->u:Lcom/google/android/gms/internal/ads/zzcnf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnc;->a(Lcom/google/android/gms/internal/ads/zzcnf;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->o:Lcom/google/android/gms/internal/ads/zzcei;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->p:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnp;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/zzcnq;Lorg/json/JSONObject;)V

    .line 2
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    :cond_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final H0(Lcom/google/android/gms/internal/ads/zzate;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->u:Lcom/google/android/gms/internal/ads/zzcnf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->t:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    .line 2
    :cond_8
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzate;->j:Z

    .line 3
    :goto_a
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcnf;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->r:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcnf;->d:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->u:Lcom/google/android/gms/internal/ads/zzcnf;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzcnf;->f:Lcom/google/android/gms/internal/ads/zzate;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->s:Z

    if-eqz p1, :cond_1f

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcnq;->f()V

    :cond_1f
    return-void
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->s:Z

    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->s:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcnq;->f()V

    return-void
.end method

.method final synthetic c(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnq;->o:Lcom/google/android/gms/internal/ads/zzcei;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbkv;->Z0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->t:Z

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnq;->o:Lcom/google/android/gms/internal/ads/zzcei;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcnp (com.google.android.gms.internal.ads.zzcnp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcnq;

.field public final synthetic p:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcnq;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnp;->o:Lcom/google/android/gms/internal/ads/zzcnq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnp;->p:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnp;->o:Lcom/google/android/gms/internal/ads/zzcnq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnp;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnq;->c(Lorg/json/JSONObject;)V

    return-void
.end method

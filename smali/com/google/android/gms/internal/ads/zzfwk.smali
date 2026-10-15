###### Class com.google.android.gms.internal.ads.zzfwk (com.google.android.gms.internal.ads.zzfwk)
.class public final Lcom/google/android/gms/internal/ads/zzfwk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Z

.field private final b:Lcom/google/android/gms/internal/ads/zzfwg;

.field private final c:Lcom/google/android/gms/internal/ads/zzfvx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/zzfwu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/zzfwl;

.field private f:Lcom/google/android/gms/internal/ads/zzfwm;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfwu;Lcom/google/android/gms/internal/ads/zzfwj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfwg;->b:Lcom/google/android/gms/internal/ads/zzfwg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwk;->b:Lcom/google/android/gms/internal/ads/zzfwg;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwk;->e:Lcom/google/android/gms/internal/ads/zzfwl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwk;->f:Lcom/google/android/gms/internal/ads/zzfwm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwk;->c:Lcom/google/android/gms/internal/ads/zzfvx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwk;->d:Lcom/google/android/gms/internal/ads/zzfwu;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzfwk;)Lcom/google/android/gms/internal/ads/zzfvx;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->c:Lcom/google/android/gms/internal/ads/zzfvx;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzfwk;)Lcom/google/android/gms/internal/ads/zzfwg;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->b:Lcom/google/android/gms/internal/ads/zzfwg;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzfwk;)Lcom/google/android/gms/internal/ads/zzfwl;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->e:Lcom/google/android/gms/internal/ads/zzfwl;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzfwk;)Lcom/google/android/gms/internal/ads/zzfwm;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->f:Lcom/google/android/gms/internal/ads/zzfwm;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/ads/zzfwk;)Lcom/google/android/gms/internal/ads/zzfwu;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->d:Lcom/google/android/gms/internal/ads/zzfwu;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/internal/ads/zzfwk;Lcom/google/android/gms/internal/ads/zzfwm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwk;->f:Lcom/google/android/gms/internal/ads/zzfwm;

    return-void
.end method

.method static bridge synthetic j(Lcom/google/android/gms/internal/ads/zzfwk;Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfwk;->a:Z

    return-void
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzfwk;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->a:Z

    return p0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/zzfwg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->b:Lcom/google/android/gms/internal/ads/zzfwg;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzfwk;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->f:Lcom/google/android/gms/internal/ads/zzfwm;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwm;->c(Lcom/google/android/gms/internal/ads/zzfwm;)V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->a:Z

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzfwk;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwl;->b()Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwk;->e:Lcom/google/android/gms/internal/ads/zzfwl;

    return-object p0
.end method

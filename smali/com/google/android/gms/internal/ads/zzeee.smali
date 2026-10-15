###### Class com.google.android.gms.internal.ads.zzeee (com.google.android.gms.internal.ads.zzeee)
.class public final Lcom/google/android/gms/internal/ads/zzeee;
.super Lcom/google/android/gms/internal/ads/zzedz;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcgd;

.field private final b:Lcom/google/android/gms/internal/ads/zzctx;

.field private final c:Lcom/google/android/gms/internal/ads/zzdab;

.field private final d:Lcom/google/android/gms/internal/ads/zzeeh;

.field private final e:Lcom/google/android/gms/internal/ads/zzeyp;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgd;Lcom/google/android/gms/internal/ads/zzctx;Lcom/google/android/gms/internal/ads/zzdab;Lcom/google/android/gms/internal/ads/zzeyp;Lcom/google/android/gms/internal/ads/zzeeh;)V
    .registers 6
    .param p4    # Lcom/google/android/gms/internal/ads/zzeyp;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzedz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeee;->a:Lcom/google/android/gms/internal/ads/zzcgd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeee;->b:Lcom/google/android/gms/internal/ads/zzctx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeee;->c:Lcom/google/android/gms/internal/ads/zzdab;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeee;->e:Lcom/google/android/gms/internal/ads/zzeyp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeee;->d:Lcom/google/android/gms/internal/ads/zzeeh;

    return-void
.end method


# virtual methods
.method protected final c(Lcom/google/android/gms/internal/ads/zzeyx;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyo;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeee;->b:Lcom/google/android/gms/internal/ads/zzctx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzctx;->h(Lcom/google/android/gms/internal/ads/zzeyx;)Lcom/google/android/gms/internal/ads/zzctx;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzctx;->e(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzctx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzctr;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeee;->d:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzctr;-><init>(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeeh;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzctx;->f(Lcom/google/android/gms/internal/ads/zzctr;)Lcom/google/android/gms/internal/ads/zzctx;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->c3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeee;->e:Lcom/google/android/gms/internal/ads/zzeyp;

    if-eqz p1, :cond_2d

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeee;->b:Lcom/google/android/gms/internal/ads/zzctx;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzctx;->g(Lcom/google/android/gms/internal/ads/zzeyp;)Lcom/google/android/gms/internal/ads/zzctx;

    :cond_2d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeee;->a:Lcom/google/android/gms/internal/ads/zzcgd;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgd;->l()Lcom/google/android/gms/internal/ads/zzdly;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeee;->b:Lcom/google/android/gms/internal/ads/zzctx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzctx;->i()Lcom/google/android/gms/internal/ads/zzctz;

    move-result-object p2

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdly;->d(Lcom/google/android/gms/internal/ads/zzctz;)Lcom/google/android/gms/internal/ads/zzdly;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeee;->c:Lcom/google/android/gms/internal/ads/zzdab;

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdly;->g(Lcom/google/android/gms/internal/ads/zzdab;)Lcom/google/android/gms/internal/ads/zzdly;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdly;->b()Lcom/google/android/gms/internal/ads/zzdlz;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlz;->zzb()Lcom/google/android/gms/internal/ads/zzcrt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrt;->j()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrt;->i(Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

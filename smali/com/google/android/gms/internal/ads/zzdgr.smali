###### Class com.google.android.gms.internal.ads.zzdgr (com.google.android.gms.internal.ads.zzdgr)
.class public final Lcom/google/android/gms/internal/ads/zzdgr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/zzbey;

.field b:Lcom/google/android/gms/internal/ads/zzbev;

.field c:Lcom/google/android/gms/internal/ads/zzbfl;

.field d:Lcom/google/android/gms/internal/ads/zzbfi;

.field e:Lcom/google/android/gms/internal/ads/zzbkg;

.field final f:Lo/g;

.field final g:Lo/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/g;

    invoke-direct {v0}, Lo/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->f:Lo/g;

    new-instance v0, Lo/g;

    .line 2
    invoke-direct {v0}, Lo/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->g:Lo/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbev;)Lcom/google/android/gms/internal/ads/zzdgr;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->b:Lcom/google/android/gms/internal/ads/zzbev;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzbey;)Lcom/google/android/gms/internal/ads/zzdgr;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->a:Lcom/google/android/gms/internal/ads/zzbey;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfe;Lcom/google/android/gms/internal/ads/zzbfb;)Lcom/google/android/gms/internal/ads/zzdgr;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgr;->f:Lo/g;

    invoke-virtual {v0, p1, p2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgr;->g:Lo/g;

    .line 2
    invoke-virtual {p2, p1, p3}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzbkg;)Lcom/google/android/gms/internal/ads/zzdgr;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->e:Lcom/google/android/gms/internal/ads/zzbkg;

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzbfi;)Lcom/google/android/gms/internal/ads/zzdgr;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->d:Lcom/google/android/gms/internal/ads/zzbfi;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzbfl;)Lcom/google/android/gms/internal/ads/zzdgr;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgr;->c:Lcom/google/android/gms/internal/ads/zzbfl;

    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzdgt;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdgt;-><init>(Lcom/google/android/gms/internal/ads/zzdgr;Lcom/google/android/gms/internal/ads/zzdgs;)V

    return-object v0
.end method

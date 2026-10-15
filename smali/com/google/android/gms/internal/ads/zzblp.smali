###### Class com.google.android.gms.internal.ads.zzblp (com.google.android.gms.internal.ads.zzblp)
.class final Lcom/google/android/gms/internal/ads/zzblp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzblq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblp;->a:Lcom/google/android/gms/internal/ads/zzblq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkm;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzn;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzblo;-><init>(Lcom/google/android/gms/internal/ads/zzblp;Lcom/google/android/gms/internal/ads/zzbkm;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzblo (com.google.android.gms.internal.ads.zzblo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzblo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzblp;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzbkm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzblp;Lcom/google/android/gms/internal/ads/zzbkm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblo;->o:Lcom/google/android/gms/internal/ads/zzblp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblo;->p:Lcom/google/android/gms/internal/ads/zzbkm;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblo;->p:Lcom/google/android/gms/internal/ads/zzbkm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbho;->o:Lcom/google/android/gms/internal/ads/zzbid;

    const-string v2, "/result"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbls;->U0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbkm;->a()V

    return-void
.end method

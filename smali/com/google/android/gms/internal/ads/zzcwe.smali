###### Class com.google.android.gms.internal.ads.zzcwe (com.google.android.gms.internal.ads.zzcwe)
.class public final Lcom/google/android/gms/internal/ads/zzcwe;
.super Lcom/google/android/gms/internal/ads/zzczy;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwg;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzczy;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final u0(Lcom/google/android/gms/internal/ads/zzcqm;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwd;-><init>(Lcom/google/android/gms/internal/ads/zzcqm;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzczy;->W0(Lcom/google/android/gms/internal/ads/zzczx;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcwd (com.google.android.gms.internal.ads.zzcwd)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcwd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczx;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzcqm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcqm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwd;->a:Lcom/google/android/gms/internal/ads/zzcqm;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwd;->a:Lcom/google/android/gms/internal/ads/zzcqm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcwg;

    .line 1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcwg;->u0(Lcom/google/android/gms/internal/ads/zzcqm;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcqi (com.google.android.gms.internal.ads.zzcqi)
.class public final Lcom/google/android/gms/internal/ads/zzcqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatf;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzbwn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbwn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqi;->o:Lcom/google/android/gms/internal/ads/zzbwn;

    return-void
.end method


# virtual methods
.method public final H0(Lcom/google/android/gms/internal/ads/zzate;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->o:Lcom/google/android/gms/internal/ads/zzbwn;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzate;->j:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwn;->b(Z)V

    return-void
.end method

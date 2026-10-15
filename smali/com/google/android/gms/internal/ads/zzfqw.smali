###### Class com.google.android.gms.internal.ads.zzfqw (com.google.android.gms.internal.ads.zzfqw)
.class final Lcom/google/android/gms/internal/ads/zzfqw;
.super Lcom/google/android/gms/internal/ads/zzfsi;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic p:Lcom/google/android/gms/internal/ads/zzfqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfqx;Ljava/util/ListIterator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqw;->p:Lcom/google/android/gms/internal/ads/zzfqx;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfsi;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzalr (com.google.android.gms.internal.ads.zzalr)
.class final Lcom/google/android/gms/internal/ads/zzalr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/zzakx;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzakx;Lcom/google/android/gms/internal/ads/zzalq;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalr;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalr;->b:Lcom/google/android/gms/internal/ads/zzakx;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzalr;)Lcom/google/android/gms/internal/ads/zzakx;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzalr;->b:Lcom/google/android/gms/internal/ads/zzakx;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzalr;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzalr;->a:Ljava/lang/String;

    return-object p0
.end method

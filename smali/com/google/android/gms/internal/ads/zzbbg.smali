###### Class com.google.android.gms.internal.ads.zzbbg (com.google.android.gms.internal.ads.zzbbg)
.class public final Lcom/google/android/gms/internal/ads/zzbbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zzbbg;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbg;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbbg;->a:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbg;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbbg;->c:Lcom/google/android/gms/internal/ads/zzbbg;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbbg;->a:J

    return-wide v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzbbg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbg;->c:Lcom/google/android/gms/internal/ads/zzbbg;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbg;->b:Ljava/lang/String;

    return-object v0
.end method

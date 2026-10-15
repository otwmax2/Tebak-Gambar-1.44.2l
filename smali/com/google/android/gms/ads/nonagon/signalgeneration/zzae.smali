###### Class com.google.android.gms.ads.nonagon.signalgeneration.zzae (com.google.android.gms.ads.nonagon.signalgeneration.zzae)
.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzag;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaf;)V

    return-object v0
.end method

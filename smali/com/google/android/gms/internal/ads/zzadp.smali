###### Class com.google.android.gms.internal.ads.zzadp (com.google.android.gms.internal.ads.zzadp)
.class public abstract Lcom/google/android/gms/internal/ads/zzadp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbp;


# instance fields
.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadp;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic d2(Lcom/google/android/gms/internal/ads/zzbk;)V
    .registers 2

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadp;->o:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.util.zzay (com.google.android.gms.ads.internal.util.zzay)
.class public final Lcom/google/android/gms/ads/internal/util/zzay;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzay;->o:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzay;->o:I

    return v0
.end method

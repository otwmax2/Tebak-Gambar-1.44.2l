###### Class com.google.android.gms.internal.ads.zzbsj (com.google.android.gms.internal.ads.zzbsj)
.class final Lcom/google/android/gms/internal/ads/zzbsj;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method private constructor <init>()V
    .registers 2

    const-string v0, "Flags were accessed before initialized."

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbsi;)V
    .registers 2

    const-string p1, "Flags were accessed before initialized."

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

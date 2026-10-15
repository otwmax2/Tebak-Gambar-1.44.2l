###### Class com.google.android.gms.internal.ads.zzbjt (com.google.android.gms.internal.ads.zzbjt)
.class public final Lcom/google/android/gms/internal/ads/zzbjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/AdapterStatus;


# instance fields
.field private final a:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjt;->a:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjt;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbjt;->c:I

    return-void
.end method

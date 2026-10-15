###### Class com.google.android.gms.ads.mediation.customevent.CustomEventExtras (com.google.android.gms.ads.mediation.customevent.CustomEventExtras)
.class public final Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/customevent/CustomEventExtras;->a:Ljava/util/HashMap;

    return-void
.end method

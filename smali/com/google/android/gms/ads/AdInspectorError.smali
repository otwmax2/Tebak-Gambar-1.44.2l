###### Class com.google.android.gms.ads.AdInspectorError (com.google.android.gms.ads.AdInspectorError)
.class public final Lcom/google/android/gms/ads/AdInspectorError;
.super Lcom/google/android/gms/ads/AdError;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdInspectorError$AdInspectorErrorCode;
    }
.end annotation


# virtual methods
.method public a()I
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdError;->a()I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.ads.AdInspectorError.AdInspectorErrorCode (com.google.android.gms.ads.AdInspectorError$AdInspectorErrorCode)
.class public interface abstract annotation Lcom/google/android/gms/ads/AdInspectorError$AdInspectorErrorCode;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdInspectorError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AdInspectorErrorCode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

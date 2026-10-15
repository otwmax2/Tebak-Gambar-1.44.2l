###### Class com.google.android.gms.ads.AdValue (com.google.android.gms.ads.AdValue)
.class public final Lcom/google/android/gms/ads/AdValue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdValue$PrecisionType;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method private constructor <init>(ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/AdValue;->a:I

    iput-object p2, p0, Lcom/google/android/gms/ads/AdValue;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/ads/AdValue;->c:J

    return-void
.end method

.method public static a(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;
    .registers 5

    new-instance v0, Lcom/google/android/gms/ads/AdValue;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/AdValue;-><init>(ILjava/lang/String;J)V

    return-object v0
.end method

###### Class com.google.android.gms.ads.AdValue.PrecisionType (com.google.android.gms.ads.AdValue$PrecisionType)
.class public interface abstract annotation Lcom/google/android/gms/ads/AdValue$PrecisionType;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PrecisionType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

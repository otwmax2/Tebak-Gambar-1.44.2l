###### Class com.google.android.gms.internal.ads.zzbnx (com.google.android.gms.internal.ads.zzbnx)
.class public final Lcom/google/android/gms/internal/ads/zzbnx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Ljava/util/Set;

.field private final d:Z

.field private final e:Landroid/location/Location;

.field private final f:I

.field private final g:Z

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnx;->a:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbnx;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnx;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnx;->e:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbnx;->d:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbnx;->f:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzbnx;->g:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbnx;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbnx;->f:I

    return v0
.end method

.method public final d()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnx;->g:Z

    return v0
.end method

.method public final e()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnx;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnx;->d:Z

    return v0
.end method

.method public final g()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnx;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final i()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbnx;->b:I

    return v0
.end method

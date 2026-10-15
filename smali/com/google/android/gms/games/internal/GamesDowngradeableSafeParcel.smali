###### Class com.google.android.gms.games.internal.GamesDowngradeableSafeParcel (com.google.android.gms.games.internal.GamesDowngradeableSafeParcel)
.class public abstract Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.super Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.source "com.google.android.gms:play-services-games@@21.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;-><init>()V

    return-void
.end method

.method protected static Y3(Ljava/lang/Integer;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/GmsVersion;->a(I)Z

    move-result p0

    return p0
.end method

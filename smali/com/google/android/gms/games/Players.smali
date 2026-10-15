###### Class com.google.android.gms.games.Players (com.google.android.gms.games.Players)
.class public interface abstract Lcom/google/android/gms/games/Players;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Players$zza;,
        Lcom/google/android/gms/games/Players$LoadPlayersResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.games.Players.LoadPlayersResult (com.google.android.gms.games.Players$LoadPlayersResult)
.class public interface abstract Lcom/google/android/gms/games/Players$LoadPlayersResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadPlayersResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

###### Class com.google.android.gms.games.Players.zza (com.google.android.gms.games.Players$zza)
.class public interface abstract Lcom/google/android/gms/games/Players$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# virtual methods
.method public abstract A()I
.end method

.method public abstract C()Z
.end method

.method public abstract C3()I
.end method

.method public abstract E()Z
.end method

.method public abstract N()Z
.end method

.method public abstract Q()I
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract k()Z
.end method

.method public abstract t()Z
.end method

.method public abstract v()Lcom/google/android/gms/games/internal/player/StockProfileImage;
.end method

.method public abstract x()Z
.end method

.method public abstract y()Z
.end method

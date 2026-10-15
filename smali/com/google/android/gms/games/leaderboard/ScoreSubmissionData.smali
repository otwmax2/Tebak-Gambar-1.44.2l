###### Class com.google.android.gms.games.leaderboard.ScoreSubmissionData (com.google.android.gms.games.leaderboard.ScoreSubmissionData)
.class public final Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "leaderboardId"

    const-string v1, "playerId"

    const-string v2, "timeSpan"

    const-string v3, "hasResult"

    const-string v4, "rawScore"

    const-string v5, "formattedScore"

    const-string v6, "newBest"

    const-string v7, "scoreTag"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->c:I

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->d:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 5
    :goto_1b
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    :goto_1e
    if-ge v1, v0, :cond_6a

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->c4(I)I

    move-result v2

    if-nez v1, :cond_36

    const-string v3, "leaderboardId"

    .line 7
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->a:Ljava/lang/String;

    const-string v3, "playerId"

    .line 8
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->b:Ljava/lang/String;

    :cond_36
    const-string v3, "hasResult"

    .line 9
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->V3(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 10
    new-instance v3, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    const-string v4, "rawScore"

    .line 11
    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->Y3(Ljava/lang/String;II)J

    move-result-wide v5

    const-string v4, "formattedScore"

    .line 12
    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    const-string v4, "scoreTag"

    .line 13
    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    const-string v4, "newBest"

    .line 14
    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->V3(Ljava/lang/String;II)Z

    move-result v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "timeSpan"

    .line 15
    invoke-virtual {p1, v4, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->X3(Ljava/lang/String;II)I

    move-result v2

    .line 16
    iget-object v4, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_6a
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->d(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->b:Ljava/lang/String;

    const-string v2, "PlayerId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "StatusCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const/4 v1, 0x0

    :goto_19
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3e

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/games/zzfa;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimesSpan"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    if-nez v2, :cond_32

    const-string v2, "null"

    goto :goto_36

    .line 4
    :cond_32
    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_36
    const-string v3, "Result"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 5
    :cond_3e
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.leaderboard.ScoreSubmissionData.Result (com.google.android.gms.games.leaderboard.ScoreSubmissionData$Result)
.class public final Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->a:J

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->c:Ljava/lang/String;

    .line 5
    iput-boolean p5, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->d:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->d(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->a:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RawScore"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->b:Ljava/lang/String;

    const-string v2, "FormattedScore"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->c:Ljava/lang/String;

    const-string v2, "ScoreTag"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->d:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "NewBest"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

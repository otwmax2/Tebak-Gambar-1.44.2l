###### Class com.tebakgambar.model.enums.QuestionType (com.tebakgambar.model.enums.QuestionType)
.class public final enum Lcom/tebakgambar/model/enums/QuestionType;
.super Ljava/lang/Enum;
.source "QuestionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tebakgambar/model/enums/QuestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tebakgambar/model/enums/QuestionType;

.field public static final enum EVENT:Lcom/tebakgambar/model/enums/QuestionType;

.field public static final enum REGULAR:Lcom/tebakgambar/model/enums/QuestionType;

.field public static final enum REGULAR_KING:Lcom/tebakgambar/model/enums/QuestionType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/tebakgambar/model/enums/QuestionType;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tebakgambar/model/enums/QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tebakgambar/model/enums/QuestionType;->REGULAR:Lcom/tebakgambar/model/enums/QuestionType;

    .line 2
    new-instance v1, Lcom/tebakgambar/model/enums/QuestionType;

    const-string v3, "EVENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tebakgambar/model/enums/QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tebakgambar/model/enums/QuestionType;->EVENT:Lcom/tebakgambar/model/enums/QuestionType;

    .line 3
    new-instance v3, Lcom/tebakgambar/model/enums/QuestionType;

    const-string v5, "REGULAR_KING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tebakgambar/model/enums/QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tebakgambar/model/enums/QuestionType;->REGULAR_KING:Lcom/tebakgambar/model/enums/QuestionType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tebakgambar/model/enums/QuestionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/tebakgambar/model/enums/QuestionType;->$VALUES:[Lcom/tebakgambar/model/enums/QuestionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tebakgambar/model/enums/QuestionType;
    .registers 2

    .line 1
    const-class v0, Lcom/tebakgambar/model/enums/QuestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tebakgambar/model/enums/QuestionType;

    return-object p0
.end method

.method public static values()[Lcom/tebakgambar/model/enums/QuestionType;
    .registers 1

    .line 1
    sget-object v0, Lcom/tebakgambar/model/enums/QuestionType;->$VALUES:[Lcom/tebakgambar/model/enums/QuestionType;

    invoke-virtual {v0}, [Lcom/tebakgambar/model/enums/QuestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tebakgambar/model/enums/QuestionType;

    return-object v0
.end method

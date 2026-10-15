###### Class com.tebakgambar.model.enums.RatingType (com.tebakgambar.model.enums.RatingType)
.class public final enum Lcom/tebakgambar/model/enums/RatingType;
.super Ljava/lang/Enum;
.source "RatingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tebakgambar/model/enums/RatingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tebakgambar/model/enums/RatingType;

.field public static final enum FIVE:Lcom/tebakgambar/model/enums/RatingType;

.field public static final enum FORE:Lcom/tebakgambar/model/enums/RatingType;

.field public static final enum ONE:Lcom/tebakgambar/model/enums/RatingType;

.field public static final enum THREE:Lcom/tebakgambar/model/enums/RatingType;

.field public static final enum TWO:Lcom/tebakgambar/model/enums/RatingType;

.field public static valuesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tebakgambar/model/enums/RatingType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v0, Lcom/tebakgambar/model/enums/RatingType;

    const-string v1, "ONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tebakgambar/model/enums/RatingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tebakgambar/model/enums/RatingType;->ONE:Lcom/tebakgambar/model/enums/RatingType;

    .line 2
    new-instance v1, Lcom/tebakgambar/model/enums/RatingType;

    const-string v4, "TWO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/tebakgambar/model/enums/RatingType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tebakgambar/model/enums/RatingType;->TWO:Lcom/tebakgambar/model/enums/RatingType;

    .line 3
    new-instance v4, Lcom/tebakgambar/model/enums/RatingType;

    const-string v6, "THREE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/tebakgambar/model/enums/RatingType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tebakgambar/model/enums/RatingType;->THREE:Lcom/tebakgambar/model/enums/RatingType;

    .line 4
    new-instance v6, Lcom/tebakgambar/model/enums/RatingType;

    const-string v8, "FORE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/tebakgambar/model/enums/RatingType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tebakgambar/model/enums/RatingType;->FORE:Lcom/tebakgambar/model/enums/RatingType;

    .line 5
    new-instance v8, Lcom/tebakgambar/model/enums/RatingType;

    const-string v10, "FIVE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/tebakgambar/model/enums/RatingType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tebakgambar/model/enums/RatingType;->FIVE:Lcom/tebakgambar/model/enums/RatingType;

    new-array v10, v11, [Lcom/tebakgambar/model/enums/RatingType;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 6
    sput-object v10, Lcom/tebakgambar/model/enums/RatingType;->$VALUES:[Lcom/tebakgambar/model/enums/RatingType;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/enums/RatingType;->valuesMap:Ljava/util/Map;

    .line 8
    invoke-static {}, Lcom/tebakgambar/model/enums/RatingType;->values()[Lcom/tebakgambar/model/enums/RatingType;

    move-result-object v0

    array-length v1, v0

    :goto_4d
    if-ge v2, v1, :cond_5f

    aget-object v3, v0, v2

    .line 9
    sget-object v4, Lcom/tebakgambar/model/enums/RatingType;->valuesMap:Ljava/util/Map;

    iget v5, v3, Lcom/tebakgambar/model/enums/RatingType;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_5f
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tebakgambar/model/enums/RatingType;->value:I

    return-void
.end method

.method public static castIntToEnum(I)Lcom/tebakgambar/model/enums/RatingType;
    .registers 2

    .line 1
    sget-object v0, Lcom/tebakgambar/model/enums/RatingType;->valuesMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tebakgambar/model/enums/RatingType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tebakgambar/model/enums/RatingType;
    .registers 2

    .line 1
    const-class v0, Lcom/tebakgambar/model/enums/RatingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tebakgambar/model/enums/RatingType;

    return-object p0
.end method

.method public static values()[Lcom/tebakgambar/model/enums/RatingType;
    .registers 1

    .line 1
    sget-object v0, Lcom/tebakgambar/model/enums/RatingType;->$VALUES:[Lcom/tebakgambar/model/enums/RatingType;

    invoke-virtual {v0}, [Lcom/tebakgambar/model/enums/RatingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tebakgambar/model/enums/RatingType;

    return-object v0
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/tebakgambar/model/enums/RatingType$1;->$SwitchMap$com$tebakgambar$model$enums$RatingType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    const-string v0, ""

    return-object v0

    :cond_1a
    const-string v0, "Mantap"

    return-object v0

    :cond_1d
    const-string v0, "Seru banget"

    return-object v0

    :cond_20
    const-string v0, "Boleh juga"

    return-object v0

    :cond_23
    const-string v0, "Bisa lebih baik"

    return-object v0

    :cond_26
    const-string v0, "Tingkatkan lagi ya"

    return-object v0
.end method

###### Class com.tebakgambar.model.enums.RatingType.AnonymousClass1 (com.tebakgambar.model.enums.RatingType$1)
.class synthetic Lcom/tebakgambar/model/enums/RatingType$1;
.super Ljava/lang/Object;
.source "RatingType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/enums/RatingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tebakgambar$model$enums$RatingType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/tebakgambar/model/enums/RatingType;->values()[Lcom/tebakgambar/model/enums/RatingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tebakgambar/model/enums/RatingType$1;->$SwitchMap$com$tebakgambar$model$enums$RatingType:[I

    :try_start_9
    sget-object v1, Lcom/tebakgambar/model/enums/RatingType;->ONE:Lcom/tebakgambar/model/enums/RatingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/tebakgambar/model/enums/RatingType$1;->$SwitchMap$com$tebakgambar$model$enums$RatingType:[I

    sget-object v1, Lcom/tebakgambar/model/enums/RatingType;->TWO:Lcom/tebakgambar/model/enums/RatingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/tebakgambar/model/enums/RatingType$1;->$SwitchMap$com$tebakgambar$model$enums$RatingType:[I

    sget-object v1, Lcom/tebakgambar/model/enums/RatingType;->THREE:Lcom/tebakgambar/model/enums/RatingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/tebakgambar/model/enums/RatingType$1;->$SwitchMap$com$tebakgambar$model$enums$RatingType:[I

    sget-object v1, Lcom/tebakgambar/model/enums/RatingType;->FORE:Lcom/tebakgambar/model/enums/RatingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/tebakgambar/model/enums/RatingType$1;->$SwitchMap$com$tebakgambar$model$enums$RatingType:[I

    sget-object v1, Lcom/tebakgambar/model/enums/RatingType;->FIVE:Lcom/tebakgambar/model/enums/RatingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

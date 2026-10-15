###### Class q5.y (q5.y)
.class public final enum Lq5/y;
.super Ljava/lang/Enum;
.source "DeliveryMechanism.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq5/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lq5/y;

.field public static final enum q:Lq5/y;

.field public static final enum r:Lq5/y;

.field public static final enum s:Lq5/y;

.field private static final synthetic t:[Lq5/y;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lq5/y;

    const-string v1, "DEVELOPER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lq5/y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq5/y;->p:Lq5/y;

    .line 2
    new-instance v1, Lq5/y;

    const-string v4, "USER_SIDELOAD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lq5/y;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq5/y;->q:Lq5/y;

    .line 3
    new-instance v4, Lq5/y;

    const-string v6, "TEST_DISTRIBUTION"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lq5/y;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lq5/y;->r:Lq5/y;

    .line 4
    new-instance v6, Lq5/y;

    const-string v8, "APP_STORE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lq5/y;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lq5/y;->s:Lq5/y;

    new-array v8, v9, [Lq5/y;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lq5/y;->t:[Lq5/y;

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
    iput p3, p0, Lq5/y;->o:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Lq5/y;
    .registers 1

    if-eqz p0, :cond_5

    .line 1
    sget-object p0, Lq5/y;->s:Lq5/y;

    goto :goto_7

    :cond_5
    sget-object p0, Lq5/y;->p:Lq5/y;

    :goto_7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lq5/y;
    .registers 2

    .line 1
    const-class v0, Lq5/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq5/y;

    return-object p0
.end method

.method public static values()[Lq5/y;
    .registers 1

    .line 1
    sget-object v0, Lq5/y;->t:[Lq5/y;

    invoke-virtual {v0}, [Lq5/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq5/y;

    return-object v0
.end method


# virtual methods
.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lq5/y;->o:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lq5/y;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

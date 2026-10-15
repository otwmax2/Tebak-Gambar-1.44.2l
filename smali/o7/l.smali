###### Class o7.l (o7.l)
.class public final enum Lo7/l;
.super Ljava/lang/Enum;
.source "SymbolShapeHint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo7/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lo7/l;

.field public static final enum p:Lo7/l;

.field public static final enum q:Lo7/l;

.field private static final synthetic r:[Lo7/l;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lo7/l;

    const-string v1, "FORCE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo7/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo7/l;->o:Lo7/l;

    .line 2
    new-instance v1, Lo7/l;

    const-string v3, "FORCE_SQUARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo7/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo7/l;->p:Lo7/l;

    .line 3
    new-instance v3, Lo7/l;

    const-string v5, "FORCE_RECTANGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lo7/l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lo7/l;->q:Lo7/l;

    const/4 v5, 0x3

    new-array v5, v5, [Lo7/l;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lo7/l;->r:[Lo7/l;

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

.method public static valueOf(Ljava/lang/String;)Lo7/l;
    .registers 2

    .line 1
    const-class v0, Lo7/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo7/l;

    return-object p0
.end method

.method public static values()[Lo7/l;
    .registers 1

    .line 1
    sget-object v0, Lo7/l;->r:[Lo7/l;

    invoke-virtual {v0}, [Lo7/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo7/l;

    return-object v0
.end method

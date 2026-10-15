###### Class x7.f (x7.f)
.class public final enum Lx7/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx7/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lx7/f;

.field public static final enum p:Lx7/f;

.field public static final enum q:Lx7/f;

.field public static final enum r:Lx7/f;

.field private static final synthetic s:[Lx7/f;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lx7/f;

    const-string v1, "VIDEO_CONTROLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx7/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx7/f;->o:Lx7/f;

    new-instance v1, Lx7/f;

    const-string v3, "CLOSE_AD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx7/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx7/f;->p:Lx7/f;

    new-instance v3, Lx7/f;

    const-string v5, "NOT_VISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lx7/f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lx7/f;->q:Lx7/f;

    new-instance v5, Lx7/f;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lx7/f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lx7/f;->r:Lx7/f;

    const/4 v7, 0x4

    new-array v7, v7, [Lx7/f;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lx7/f;->s:[Lx7/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx7/f;
    .registers 2

    const-class v0, Lx7/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx7/f;

    return-object p0
.end method

.method public static values()[Lx7/f;
    .registers 1

    sget-object v0, Lx7/f;->s:[Lx7/f;

    invoke-virtual {v0}, [Lx7/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx7/f;

    return-object v0
.end method

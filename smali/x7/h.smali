###### Class x7.h (x7.h)
.class public final enum Lx7/h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx7/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lx7/h;

.field public static final enum q:Lx7/h;

.field public static final enum r:Lx7/h;

.field private static final synthetic s:[Lx7/h;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lx7/h;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lx7/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lx7/h;->p:Lx7/h;

    new-instance v1, Lx7/h;

    const-string v3, "JAVASCRIPT"

    const/4 v4, 0x1

    const-string v5, "javascript"

    invoke-direct {v1, v3, v4, v5}, Lx7/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lx7/h;->q:Lx7/h;

    new-instance v3, Lx7/h;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const-string v7, "none"

    invoke-direct {v3, v5, v6, v7}, Lx7/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lx7/h;->r:Lx7/h;

    const/4 v5, 0x3

    new-array v5, v5, [Lx7/h;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lx7/h;->s:[Lx7/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lx7/h;->o:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx7/h;
    .registers 2

    const-class v0, Lx7/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx7/h;

    return-object p0
.end method

.method public static values()[Lx7/h;
    .registers 1

    sget-object v0, Lx7/h;->s:[Lx7/h;

    invoke-virtual {v0}, [Lx7/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx7/h;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lx7/h;->o:Ljava/lang/String;

    return-object v0
.end method

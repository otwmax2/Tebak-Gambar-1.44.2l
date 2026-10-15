###### Class x7.d (x7.d)
.class public final enum Lx7/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx7/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lx7/d;

.field public static final enum q:Lx7/d;

.field public static final enum r:Lx7/d;

.field private static final synthetic s:[Lx7/d;


# instance fields
.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lx7/d;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lx7/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lx7/d;->p:Lx7/d;

    new-instance v1, Lx7/d;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "native"

    invoke-direct {v1, v3, v4, v5}, Lx7/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lx7/d;->q:Lx7/d;

    new-instance v3, Lx7/d;

    const-string v5, "JAVASCRIPT"

    const/4 v6, 0x2

    const-string v7, "javascript"

    invoke-direct {v3, v5, v6, v7}, Lx7/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lx7/d;->r:Lx7/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lx7/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lx7/d;->s:[Lx7/d;

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

    iput-object p3, p0, Lx7/d;->o:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx7/d;
    .registers 2

    const-class v0, Lx7/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx7/d;

    return-object p0
.end method

.method public static values()[Lx7/d;
    .registers 1

    sget-object v0, Lx7/d;->s:[Lx7/d;

    invoke-virtual {v0}, [Lx7/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx7/d;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lx7/d;->o:Ljava/lang/String;

    return-object v0
.end method

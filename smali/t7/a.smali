###### Class t7.a (t7.a)
.class public final enum Lt7/a;
.super Ljava/lang/Enum;
.source "ErrorCorrectionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt7/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lt7/a;

.field public static final enum q:Lt7/a;

.field public static final enum r:Lt7/a;

.field public static final enum s:Lt7/a;

.field private static final t:[Lt7/a;

.field private static final synthetic u:[Lt7/a;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lt7/a;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lt7/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lt7/a;->p:Lt7/a;

    .line 2
    new-instance v1, Lt7/a;

    const-string v4, "M"

    invoke-direct {v1, v4, v3, v2}, Lt7/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lt7/a;->q:Lt7/a;

    .line 3
    new-instance v4, Lt7/a;

    const-string v5, "Q"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lt7/a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lt7/a;->r:Lt7/a;

    .line 4
    new-instance v5, Lt7/a;

    const-string v8, "H"

    invoke-direct {v5, v8, v7, v6}, Lt7/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lt7/a;->s:Lt7/a;

    const/4 v8, 0x4

    new-array v9, v8, [Lt7/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v7

    .line 5
    sput-object v9, Lt7/a;->u:[Lt7/a;

    new-array v8, v8, [Lt7/a;

    aput-object v1, v8, v2

    aput-object v0, v8, v3

    aput-object v5, v8, v6

    aput-object v4, v8, v7

    .line 6
    sput-object v8, Lt7/a;->t:[Lt7/a;

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
    iput p3, p0, Lt7/a;->o:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt7/a;
    .registers 2

    .line 1
    const-class v0, Lt7/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt7/a;

    return-object p0
.end method

.method public static values()[Lt7/a;
    .registers 1

    .line 1
    sget-object v0, Lt7/a;->u:[Lt7/a;

    invoke-virtual {v0}, [Lt7/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt7/a;

    return-object v0
.end method


# virtual methods
.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lt7/a;->o:I

    return v0
.end method

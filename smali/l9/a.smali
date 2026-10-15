###### Class l9.a (l9.a)
.class public final enum Ll9/a;
.super Ljava/lang/Enum;
.source "Intrinsics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll9/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Ll9/a;

.field public static final enum p:Ll9/a;

.field public static final enum q:Ll9/a;

.field private static final synthetic r:[Ll9/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll9/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll9/a;->o:Ll9/a;

    new-instance v0, Ll9/a;

    const-string v1, "UNDECIDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll9/a;->p:Ll9/a;

    new-instance v0, Ll9/a;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ll9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll9/a;->q:Ll9/a;

    invoke-static {}, Ll9/a;->c()[Ll9/a;

    move-result-object v0

    sput-object v0, Ll9/a;->r:[Ll9/a;

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

.method private static final synthetic c()[Ll9/a;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ll9/a;

    sget-object v1, Ll9/a;->o:Ll9/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ll9/a;->p:Ll9/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ll9/a;->q:Ll9/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ll9/a;
    .registers 2

    const-class v0, Ll9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll9/a;

    return-object p0
.end method

.method public static values()[Ll9/a;
    .registers 1

    sget-object v0, Ll9/a;->r:[Ll9/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll9/a;

    return-object v0
.end method

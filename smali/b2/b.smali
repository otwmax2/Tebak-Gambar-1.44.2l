###### Class b2.b (b2.b)
.class public final enum Lb2/b;
.super Ljava/lang/Enum;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum q:Lb2/b;

.field public static final enum r:Lb2/b;

.field public static final enum s:Lb2/b;

.field public static final enum t:Lb2/b;

.field private static final synthetic u:[Lb2/b;


# instance fields
.field private final o:Z

.field private final p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lb2/b;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lb2/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lb2/b;->q:Lb2/b;

    .line 2
    new-instance v1, Lb2/b;

    const-string v4, "NONE"

    invoke-direct {v1, v4, v3, v2, v2}, Lb2/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lb2/b;->r:Lb2/b;

    .line 3
    new-instance v4, Lb2/b;

    const-string v5, "SOURCE"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3, v2}, Lb2/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lb2/b;->s:Lb2/b;

    .line 4
    new-instance v5, Lb2/b;

    const-string v7, "RESULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2, v3}, Lb2/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lb2/b;->t:Lb2/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lb2/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lb2/b;->u:[Lb2/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lb2/b;->o:Z

    .line 3
    iput-boolean p4, p0, Lb2/b;->p:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb2/b;
    .registers 2

    .line 1
    const-class v0, Lb2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb2/b;

    return-object p0
.end method

.method public static values()[Lb2/b;
    .registers 1

    .line 1
    sget-object v0, Lb2/b;->u:[Lb2/b;

    invoke-virtual {v0}, [Lb2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb2/b;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lb2/b;->p:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lb2/b;->o:Z

    return v0
.end method

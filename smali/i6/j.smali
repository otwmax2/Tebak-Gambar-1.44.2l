###### Class i6.j (i6.j)
.class public interface abstract Li6/j;
.super Ljava/lang/Object;
.source "HeartBeatInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/j$a;
    }
.end annotation


# virtual methods
.method public abstract b(Ljava/lang/String;)Li6/j$a;
.end method

###### Class i6.j.a (i6.j$a)
.class public final enum Li6/j$a;
.super Ljava/lang/Enum;
.source "HeartBeatInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li6/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Li6/j$a;

.field public static final enum q:Li6/j$a;

.field public static final enum r:Li6/j$a;

.field public static final enum s:Li6/j$a;

.field private static final synthetic t:[Li6/j$a;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Li6/j$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Li6/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Li6/j$a;->p:Li6/j$a;

    .line 2
    new-instance v1, Li6/j$a;

    const-string v3, "SDK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Li6/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Li6/j$a;->q:Li6/j$a;

    .line 3
    new-instance v3, Li6/j$a;

    const-string v5, "GLOBAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Li6/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Li6/j$a;->r:Li6/j$a;

    .line 4
    new-instance v5, Li6/j$a;

    const-string v7, "COMBINED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Li6/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Li6/j$a;->s:Li6/j$a;

    const/4 v7, 0x4

    new-array v7, v7, [Li6/j$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Li6/j$a;->t:[Li6/j$a;

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
    iput p3, p0, Li6/j$a;->o:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li6/j$a;
    .registers 2

    .line 1
    const-class v0, Li6/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li6/j$a;

    return-object p0
.end method

.method public static values()[Li6/j$a;
    .registers 1

    .line 1
    sget-object v0, Li6/j$a;->t:[Li6/j$a;

    invoke-virtual {v0}, [Li6/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li6/j$a;

    return-object v0
.end method


# virtual methods
.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Li6/j$a;->o:I

    return v0
.end method

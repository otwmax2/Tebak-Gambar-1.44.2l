###### Class a9.a (a9.a)
.class public La9/a;
.super Ljava/lang/Object;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La9/a$a;
    }
.end annotation


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La9/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "La9/a$a;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_75

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, p0, La9/a;->a:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x2e

    goto :goto_11

    :cond_f
    const/16 v0, 0x3a

    .line 2
    :goto_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    goto :goto_75

    .line 3
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v1, La9/b;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5
    :cond_24
    :goto_24
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_47

    .line 7
    iget-boolean v1, p0, La9/a;->a:Z

    if-eqz v1, :cond_24

    sget-object v1, La9/b;->n:Ljava/util/regex/Pattern;

    const/4 v2, 0x2

    .line 8
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_24

    :cond_47
    const/4 v1, 0x3

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    .line 12
    sget-object v4, La9/b;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 14
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    .line 16
    :cond_69
    new-instance v4, La9/a$a;

    sget-object v5, La9/a$a$a;->o:La9/a$a$a;

    invoke-direct {v4, v3, v1, v2, v5}, La9/a$a;-><init>(IILjava/lang/String;La9/a$a$a;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_74
    return-object v0

    .line 17
    :cond_75
    :goto_75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

###### Class a9.a.C0004a (a9.a$a)
.class public La9/a$a;
.super Ljava/lang/Object;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La9/a$a$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:La9/a$a$a;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;La9/a$a$a;)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, La9/a$a;-><init>(IILjava/lang/String;Ljava/lang/String;La9/a$a$a;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;La9/a$a$a;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, La9/a$a;->f:Ljava/lang/String;

    .line 3
    iput-object v0, p0, La9/a$a;->g:Ljava/lang/String;

    .line 4
    iput p1, p0, La9/a$a;->a:I

    .line 5
    iput p2, p0, La9/a$a;->b:I

    .line 6
    iput-object p3, p0, La9/a$a;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, La9/a$a;->d:Ljava/lang/String;

    .line 8
    iput-object p5, p0, La9/a$a;->e:La9/a$a$a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, La9/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, La9/a$a;

    .line 3
    iget-object v1, p0, La9/a$a;->e:La9/a$a$a;

    iget-object v3, p1, La9/a$a;->e:La9/a$a$a;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, p0, La9/a$a;->a:I

    iget v3, p1, La9/a$a;->a:I

    if-ne v1, v3, :cond_2d

    iget v1, p0, La9/a$a;->b:I

    iget v3, p1, La9/a$a;->b:I

    if-ne v1, v3, :cond_2d

    iget-object v1, p0, La9/a$a;->c:Ljava/lang/String;

    iget-object p1, p1, La9/a$a;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, La9/a$a;->e:La9/a$a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object v1, p0, La9/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, La9/a$a;->a:I

    add-int/2addr v0, v1

    iget v1, p0, La9/a$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La9/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La9/a$a;->e:La9/a$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La9/a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La9/a$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class a9.a.C0004a.EnumC0005a (a9.a$a$a)
.class public final enum La9/a$a$a;
.super Ljava/lang/Enum;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La9/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La9/a$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:La9/a$a$a;

.field public static final enum p:La9/a$a$a;

.field public static final enum q:La9/a$a$a;

.field public static final enum r:La9/a$a$a;

.field private static final synthetic s:[La9/a$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, La9/a$a$a;

    const-string v1, "URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La9/a$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La9/a$a$a;->o:La9/a$a$a;

    new-instance v1, La9/a$a$a;

    const-string v3, "HASHTAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La9/a$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La9/a$a$a;->p:La9/a$a$a;

    new-instance v3, La9/a$a$a;

    const-string v5, "MENTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La9/a$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La9/a$a$a;->q:La9/a$a$a;

    new-instance v5, La9/a$a$a;

    const-string v7, "CASHTAG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, La9/a$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, La9/a$a$a;->r:La9/a$a$a;

    const/4 v7, 0x4

    new-array v7, v7, [La9/a$a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, La9/a$a$a;->s:[La9/a$a$a;

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

.method public static valueOf(Ljava/lang/String;)La9/a$a$a;
    .registers 2

    .line 1
    const-class v0, La9/a$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La9/a$a$a;

    return-object p0
.end method

.method public static values()[La9/a$a$a;
    .registers 1

    .line 1
    sget-object v0, La9/a$a$a;->s:[La9/a$a$a;

    invoke-virtual {v0}, [La9/a$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La9/a$a$a;

    return-object v0
.end method

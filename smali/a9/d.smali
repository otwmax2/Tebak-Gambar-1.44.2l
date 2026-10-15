###### Class a9.d (a9.d)
.class public La9/d;
.super Ljava/lang/Object;
.source "Validator.java"


# instance fields
.field protected a:I

.field protected b:I

.field private c:La9/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    .line 2
    iput v0, p0, La9/d;->a:I

    .line 3
    iput v0, p0, La9/d;->b:I

    .line 4
    new-instance v0, La9/a;

    invoke-direct {v0}, La9/a;-><init>()V

    iput-object v0, p0, La9/d;->c:La9/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 6

    .line 1
    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 3
    iget-object v1, p0, La9/d;->c:La9/a;

    invoke-virtual {v1, p1}, La9/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La9/a$a;

    .line 4
    iget v2, v1, La9/a$a;->a:I

    iget v3, v1, La9/a$a;->b:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 5
    iget-object v1, v1, La9/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget v1, p0, La9/d;->b:I

    goto :goto_3e

    :cond_3c
    iget v1, p0, La9/d;->a:I

    :goto_3e
    add-int/2addr v0, v1

    goto :goto_19

    :cond_40
    return v0
.end method

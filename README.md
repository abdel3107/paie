# Manuel de Paie Camerounaise pour Odoo

Ce dépôt contient un manuel complet pour comprendre et configurer la paie camerounaise dans Odoo.

## 📥 Formats Disponibles

- **Markdown** : `MANUEL_PAIE_CAMEROUNAISE.md` (pour consultation en ligne)
- **PDF** : `MANUEL_PAIE_CAMEROUNAISE.pdf` (pour impression et consultation hors ligne)

## 📚 Contenu du Manuel

Le fichier **`MANUEL_PAIE_CAMEROUNAISE.md`** contient un guide exhaustif de **3,122 lignes** couvrant tous les aspects de la paie au Cameroun, spécifiquement pour l'Hôpital Général de Douala.

### Structure du Manuel

1. **PARTIE 1: Fondamentaux de la Paie**
   - Concepts de base expliqués simplement
   - Différence entre salaire brut, net, imposable
   - Schémas visuels du flux de calcul

2. **PARTIE 2: Éléments de Rémunération**
   - Salaire de base, primes, indemnités
   - Avantages en nature
   - Heures supplémentaires

3. **PARTIE 3: CNPS (Cotisations Sociales)**
   - Toutes les branches expliquées
   - Calculs détaillés avec exemples
   - Plafonds et taux actuels

4. **PARTIE 4: IRPP (Fiscalité)**
   - Barème progressif de l'impôt
   - Calculs étape par étape
   - Nombreux exemples concrets

5. **PARTIE 5: Autres Retenues**
   - Prêts, avances
   - Saisies sur salaire
   - Cotisations volontaires

6. **PARTIE 6: Calcul Complet**
   - 4 exemples détaillés du brut au net
   - Bulletins de paie annotés
   - Checklist de calcul

7. **PARTIE 7: Secteur Hospitalier**
   - Grilles salariales par poste
   - Primes spécifiques (garde, risque, astreinte)
   - Organisation du temps de travail

8. **PARTIE 8: Glossaire**
   - Tous les termes techniques expliqués
   - De A à Z

9. **PARTIE 9: Configuration Odoo**
   - Architecture du module paie
   - Règles de salaire avec formules Python
   - Workflow complet

10. **ANNEXES**
    - Tableaux récapitulatifs
    - Formules mathématiques
    - Exemple de bulletin annoté
    - Checklist d'implémentation
    - Contacts utiles

## 🎯 Pour Qui?

Ce manuel est conçu pour:
- ✅ Ingénieurs logiciels découvrant la paie
- ✅ Administrateurs Odoo
- ✅ Gestionnaires de paie
- ✅ Responsables RH
- ✅ Comptables
- ✅ Directeurs d'hôpitaux

**Aucune connaissance préalable en paie n'est requise** - tout est expliqué depuis zéro!

## 📖 Comment Utiliser Ce Manuel

### Pour Apprendre les Concepts

1. Commencez par la **PARTIE 1** pour comprendre les bases
2. Lisez la **PARTIE 2, 3 et 4** pour maîtriser CNPS et IRPP
3. Étudiez les **exemples de la PARTIE 6** pour voir les calculs complets

### Pour Configurer Odoo

1. Lisez d'abord les parties 1-6 pour comprendre la logique
2. Consultez la **PARTIE 9** pour la configuration Odoo
3. Utilisez les **ANNEXES** comme référence rapide

### Comme Référence

- Le **Glossaire (PARTIE 8)** pour clarifier un terme
- Les **Annexes** pour retrouver rapidement un taux ou une formule
- Les **exemples** pour vérifier vos calculs

## 💡 Points Clés à Retenir

### Les 4 Types de Salaire
```
SALAIRE BRUT (Base + Primes + Tout)
    ↓ - CNPS salarié (4,2%)
SALAIRE BRUT IMPOSABLE
    ↓ × 0,7 (abattement 30%)
SALAIRE NET IMPOSABLE
    ↓ Application barème IRPP
SALAIRE NET À PAYER (ce que reçoit l'employé)
```

### Taux Essentiels (2024)
- **CNPS Salarié**: 4,2% (plafonné à 750 000 FCFA)
- **CNPS Employeur**: ~13,7% (PF 7% + Pension 4,2% + AT/MP 2,5%)
- **IRPP**: 0%, 10%, 15%, 35% selon tranches
- **Abattement fiscal**: 30% forfaitaire

## 📝 Exemples Inclus

Le manuel contient des exemples complets pour:
- Agent d'entretien (157 K FCFA brut)
- Infirmière (596 K FCFA brut)
- Médecin (2 095 K FCFA brut)
- Directeur (5 250 K FCFA brut)

Chaque exemple montre le calcul du brut au net avec tous les détails!

## 🚀 Prochaines Étapes

1. **Lire le manuel** dans l'ordre
2. **Faire des exercices** papier avec vos propres exemples
3. **Consulter les textes officiels** (liens dans les annexes)
4. **Configurer Odoo** en suivant la PARTIE 9
5. **Tester** avec des cas réels
6. **Former l'équipe** utilisatrice

## 🔧 Régénération du PDF

Si vous modifiez le manuel Markdown et souhaitez régénérer le PDF :

### Prérequis
```bash
sudo apt-get install pandoc texlive-xetex texlive-fonts-recommended texlive-latex-extra
```

### Génération
```bash
make pdf
```

Ou directement avec pandoc :
```bash
pandoc MANUEL_PAIE_CAMEROUNAISE.md -o MANUEL_PAIE_CAMEROUNAISE.pdf --pdf-engine=xelatex -V geometry:margin=1in -V linkcolor:blue -V documentclass=article
```

## 📞 Support

Pour toute question sur:
- La paie camerounaise → Consultez le manuel ou contactez la CNPS/DGI
- Odoo → Consultez la documentation Odoo ou un partenaire certifié
- Le manuel lui-même → Créez une issue sur ce dépôt

## 📄 Licence

Ce manuel est fourni à titre éducatif pour l'Hôpital Général de Douala.

---

**Note Importante**: Les taux et barèmes évoluent. Vérifiez toujours les taux officiels actuels auprès de la CNPS et de la DGI avant toute mise en production.

**Bon courage dans votre projet de paie! 🎉**
